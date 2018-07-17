cmake_minimum_required(VERSION 3.5)
project(rclada_client_skeleton VERSION 0.1.0)

find_package(rclada_common REQUIRED)
ada_begin_package()

find_package(rclada REQUIRED)
find_package(rosidl_generator_ada REQUIRED)

ada_add_executables(
        ada_project
        ${PROJECT_SOURCE_DIR} bin

        prj-main)

ada_end_package()
