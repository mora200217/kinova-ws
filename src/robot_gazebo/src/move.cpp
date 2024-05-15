

#include <chrono>
#include <functional>
#include <memory>
#include <string>

#include "rclcpp/rclcpp.hpp"
#include "std_msgs/msg/string.hpp"
#include "trajectory_msgs/msg/joint_trajectory.hpp"
#include "trajectory_msgs/msg/joint_trajectory_point.hpp"

using namespace std::chrono_literals;

/* This example creates a subclass of Node and uses std::bind() to register a
* member function as a callback from the timer. */

class MinimalPublisher : public rclcpp::Node
{
  public:
    MinimalPublisher()
    : Node("minimal_publisher")
    {
      publisher_ = this->create_publisher<trajectory_msgs::msg::JointTrajectory>("joint_trajectory_controller/joint_trajectory", 10);
      timer_ = this->create_wall_timer(
      5000ms, std::bind(&MinimalPublisher::timer_callback, this));
    }

  private:
    void timer_callback()
    {
        trajectory_msgs::msg::JointTrajectory joint_trajectory_msg;
        //joint_trajectory_msg.header.stamp = rclcpp::Duration::from_seconds(0);
        
        joint_trajectory_msg.joint_names = {"joint_1", "joint_2", "joint_3", "joint_4", "joint_5", "joint_6"};


        trajectory_msgs::msg::JointTrajectoryPoint point1;
        point1.positions       = {-1.0, 0.4, 0.1, 1.0, 1.0, 1.0};
        point1.velocities      = {};  
        point1.accelerations   = {};
        point1.time_from_start = rclcpp::Duration::from_seconds(1);

        joint_trajectory_msg.points.push_back(point1);

        trajectory_msgs::msg::JointTrajectoryPoint point2;
        point2.positions       = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0};
        point2.velocities      = {};  
        point2.accelerations   = {};
        point2.time_from_start = rclcpp::Duration::from_seconds(2);

        joint_trajectory_msg.points.push_back(point2);


        trajectory_msgs::msg::JointTrajectoryPoint point3;
        point3.positions       = {1.0, 1.0, 1.0, 1.0, 1.0, 1.0};
        point3.velocities      = {};  
        point3.accelerations   = {};
        point3.time_from_start = rclcpp::Duration::from_seconds(3);

        joint_trajectory_msg.points.push_back(point3);

        publisher_->publish(joint_trajectory_msg);
        RCLCPP_INFO(this->get_logger(), "Publish!");
      
    }
    rclcpp::TimerBase::SharedPtr timer_;
    rclcpp::Publisher<trajectory_msgs::msg::JointTrajectory>::SharedPtr publisher_;
    
};

int main(int argc, char * argv[])
{
  rclcpp::init(argc, argv);
  rclcpp::spin(std::make_shared<MinimalPublisher>());
  rclcpp::shutdown();
  return 0;
}