# CMake generated Testfile for 
# Source directory: /Users/amoralesma/Documents/projects/robotics/manipulator/src/ur_description
# Build directory: /Users/amoralesma/Documents/projects/robotics/manipulator/build/ur_description
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(flake8 "/usr/local/Frameworks/Python.framework/Versions/3.12/bin/python3.12" "-u" "/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_test/cmake/run_test.py" "/Users/amoralesma/Documents/projects/robotics/manipulator/build/ur_description/test_results/ur_description/flake8.xunit.xml" "--package-name" "ur_description" "--output-file" "/Users/amoralesma/Documents/projects/robotics/manipulator/build/ur_description/ament_flake8/flake8.txt" "--command" "/usr/local/Caskroom/miniforge/base/envs/ros-humble/bin/ament_flake8" "--xunit-file" "/Users/amoralesma/Documents/projects/robotics/manipulator/build/ur_description/test_results/ur_description/flake8.xunit.xml")
set_tests_properties(flake8 PROPERTIES  LABELS "flake8;linter" TIMEOUT "60" WORKING_DIRECTORY "/Users/amoralesma/Documents/projects/robotics/manipulator/src/ur_description" _BACKTRACE_TRIPLES "/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_flake8/cmake/ament_flake8.cmake;63;ament_add_test;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_flake8/cmake/ament_cmake_flake8_lint_hook.cmake;18;ament_flake8;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_flake8/cmake/ament_cmake_flake8_lint_hook.cmake;0;;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/Users/amoralesma/Documents/projects/robotics/manipulator/src/ur_description/CMakeLists.txt;26;ament_package;/Users/amoralesma/Documents/projects/robotics/manipulator/src/ur_description/CMakeLists.txt;0;")
add_test(lint_cmake "/usr/local/Frameworks/Python.framework/Versions/3.12/bin/python3.12" "-u" "/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_test/cmake/run_test.py" "/Users/amoralesma/Documents/projects/robotics/manipulator/build/ur_description/test_results/ur_description/lint_cmake.xunit.xml" "--package-name" "ur_description" "--output-file" "/Users/amoralesma/Documents/projects/robotics/manipulator/build/ur_description/ament_lint_cmake/lint_cmake.txt" "--command" "/usr/local/Caskroom/miniforge/base/envs/ros-humble/bin/ament_lint_cmake" "--xunit-file" "/Users/amoralesma/Documents/projects/robotics/manipulator/build/ur_description/test_results/ur_description/lint_cmake.xunit.xml")
set_tests_properties(lint_cmake PROPERTIES  LABELS "lint_cmake;linter" TIMEOUT "60" WORKING_DIRECTORY "/Users/amoralesma/Documents/projects/robotics/manipulator/src/ur_description" _BACKTRACE_TRIPLES "/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_lint_cmake/cmake/ament_lint_cmake.cmake;47;ament_add_test;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_lint_cmake/cmake/ament_cmake_lint_cmake_lint_hook.cmake;21;ament_lint_cmake;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_lint_cmake/cmake/ament_cmake_lint_cmake_lint_hook.cmake;0;;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/Users/amoralesma/Documents/projects/robotics/manipulator/src/ur_description/CMakeLists.txt;26;ament_package;/Users/amoralesma/Documents/projects/robotics/manipulator/src/ur_description/CMakeLists.txt;0;")
add_test(pep257 "/usr/local/Frameworks/Python.framework/Versions/3.12/bin/python3.12" "-u" "/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_test/cmake/run_test.py" "/Users/amoralesma/Documents/projects/robotics/manipulator/build/ur_description/test_results/ur_description/pep257.xunit.xml" "--package-name" "ur_description" "--output-file" "/Users/amoralesma/Documents/projects/robotics/manipulator/build/ur_description/ament_pep257/pep257.txt" "--command" "/usr/local/Caskroom/miniforge/base/envs/ros-humble/bin/ament_pep257" "--xunit-file" "/Users/amoralesma/Documents/projects/robotics/manipulator/build/ur_description/test_results/ur_description/pep257.xunit.xml")
set_tests_properties(pep257 PROPERTIES  LABELS "pep257;linter" TIMEOUT "60" WORKING_DIRECTORY "/Users/amoralesma/Documents/projects/robotics/manipulator/src/ur_description" _BACKTRACE_TRIPLES "/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_pep257/cmake/ament_pep257.cmake;41;ament_add_test;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_pep257/cmake/ament_cmake_pep257_lint_hook.cmake;18;ament_pep257;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_pep257/cmake/ament_cmake_pep257_lint_hook.cmake;0;;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/Users/amoralesma/Documents/projects/robotics/manipulator/src/ur_description/CMakeLists.txt;26;ament_package;/Users/amoralesma/Documents/projects/robotics/manipulator/src/ur_description/CMakeLists.txt;0;")
add_test(xmllint "/usr/local/Frameworks/Python.framework/Versions/3.12/bin/python3.12" "-u" "/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_test/cmake/run_test.py" "/Users/amoralesma/Documents/projects/robotics/manipulator/build/ur_description/test_results/ur_description/xmllint.xunit.xml" "--package-name" "ur_description" "--output-file" "/Users/amoralesma/Documents/projects/robotics/manipulator/build/ur_description/ament_xmllint/xmllint.txt" "--command" "/usr/local/Caskroom/miniforge/base/envs/ros-humble/bin/ament_xmllint" "--xunit-file" "/Users/amoralesma/Documents/projects/robotics/manipulator/build/ur_description/test_results/ur_description/xmllint.xunit.xml")
set_tests_properties(xmllint PROPERTIES  LABELS "xmllint;linter" TIMEOUT "60" WORKING_DIRECTORY "/Users/amoralesma/Documents/projects/robotics/manipulator/src/ur_description" _BACKTRACE_TRIPLES "/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_xmllint/cmake/ament_xmllint.cmake;50;ament_add_test;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_xmllint/cmake/ament_cmake_xmllint_lint_hook.cmake;18;ament_xmllint;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_xmllint/cmake/ament_cmake_xmllint_lint_hook.cmake;0;;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/usr/local/Caskroom/miniforge/base/envs/ros-humble/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/Users/amoralesma/Documents/projects/robotics/manipulator/src/ur_description/CMakeLists.txt;26;ament_package;/Users/amoralesma/Documents/projects/robotics/manipulator/src/ur_description/CMakeLists.txt;0;")
