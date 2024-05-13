import os 

from ament_index_python import get_package_share_directory

from launch import LaunchDescription
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch.actions import IncludeLaunchDescription
from launch_ros import actions


def generate_launch_description(): 
    """
        Generate Launch for Gazebo. 
        1. Create Gazebo World 
    """

    # Gazebo world 
    worldName = "shelf.world"
    worldPath = os.path.join(get_package_share_directory("robot_gazebo"), "worlds", worldName)

    gazebo_rosPackageLaunch=PythonLaunchDescriptionSource(os.path.join(get_package_share_directory('gazebo_ros'),
                                                                       'launch','gazebo.launch.py'))
    # this is the launch description   
    gazeboLaunch=IncludeLaunchDescription(gazebo_rosPackageLaunch,launch_arguments={'world': worldPath, 'paused': 'true'}.items())


    return LaunchDescription([
        gazeboLaunch
    ])