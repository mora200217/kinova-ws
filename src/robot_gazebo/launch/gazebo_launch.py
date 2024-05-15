import os 

from ament_index_python import get_package_share_directory

from launch import LaunchDescription
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch.actions import IncludeLaunchDescription, ExecuteProcess, RegisterEventHandler
from launch_ros import actions
from launch.event_handlers import OnProcessExit

import xacro

def generate_launch_description(): 
    """
        Generate Launch for Gazebo. 
        1. Create Gazebo World 
    """
    
    # 1. Init Gazebo world 
    worldName = "shelf.world" 
    worldPath = os.path.join(get_package_share_directory("robot_gazebo"), "worlds", worldName)

    gazebo_rosPackageLaunch=PythonLaunchDescriptionSource(os.path.join(get_package_share_directory('gazebo_ros'),
                                                                       'launch','gazebo.launch.py'))
    gazeboLaunch=IncludeLaunchDescription(gazebo_rosPackageLaunch,launch_arguments={'world': worldPath, 'paused': 'true'}.items())

    # 2. Spawn Robot Model 
    robotFile = "gen3.xacro"
    robotPath = os.path.join(get_package_share_directory("robot_description"), "xacro", robotFile)
    
    robotDescription = xacro.process_file(robotPath).toxml()

    nodeRobotStatePublisher = actions.Node(
        package='robot_state_publisher',
        executable='robot_state_publisher',
        output='screen',
        parameters=[{'robot_description': robotDescription,
        'use_sim_time': True}] 
    )
    
    jointStateNode = actions.Node(
        package="joint_state_publisher",
        executable="joint_state_publisher",
    )

    spawnModelNode = actions.Node(package='gazebo_ros', executable='spawn_entity.py',
                          arguments=['-topic','robot_description','-entity', "kinova-gen3", '-x', "0", '-y', '0', '-z', '0'],output='screen')

    myrobot_controller_config = os.path.join(
        get_package_share_directory("robot_description"),
        "config",
        "robot_controller.yaml",
    )

    cameraNode = actions.Node(
        package="rqt_image_view", 
        executable="rqt_image_view",
        arguments=["/intel_camera/image_raw"]
    )


    load_joint_state_broadcaster = ExecuteProcess(
        cmd=['ros2', 'control', 'load_controller', '--set-state', 'active',
             'joint_state_broadcaster'],
        output='screen'
    )

    load_joint_trajectory_controller = ExecuteProcess(
        cmd=['ros2', 'control', 'load_controller', '--set-state', 'active',
             'joint_trajectory_controller'],
        output='screen'
    )

    positionNode = actions.Node(
        package="robot_gazebo",
        executable="traj_publisher"
    )

    
    return LaunchDescription([
         RegisterEventHandler(
            event_handler=OnProcessExit(
                target_action=spawnModelNode,
                on_exit=[load_joint_state_broadcaster],
            )
        ),
        RegisterEventHandler(
            event_handler=OnProcessExit(
                target_action=load_joint_state_broadcaster,
                on_exit=[load_joint_trajectory_controller],
            )
        ),
        gazeboLaunch, jointStateNode, nodeRobotStatePublisher, spawnModelNode, positionNode, cameraNode
    ])