cmake_minimum_required(VERSION 3.16)

project(newmap VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(appnewmap
    main.cpp
)

# Resources:
set(resources_resource_files
"mapbuild1.html"
"leafletjs/leaflet.js"
"index.js")

qt_add_resources(appnewmap "resources"
PREFIX
"/"
FILES
${resources_resource_files}
)
qt_add_qml_module(appnewmap
    URI newmap
    VERSION 1.0
    QML_FILES main.qml 
)

set_target_properties(appnewmap PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appnewmap
    PRIVATE Qt6::Quick)

install(TARGETS appnewmap
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
