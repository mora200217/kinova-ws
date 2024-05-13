import os 

from ament_index_python import get_package_share_directory

from launch import LaunchDescription
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch.actions import IncludeLaunchDescription
from launch_ros import actions

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


    return LaunchDescription([
        gazeboLaunch, jointStateNode, nodeRobotStatePublisher
    ])