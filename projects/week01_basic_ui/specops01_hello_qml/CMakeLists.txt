cmake_minimum_required(VERSION 3.16)

project(specops01_hello_qml VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick QuickControls2)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appspecops01_hello_qml
    main.cpp
)

qt_add_qml_module(appspecops01_hello_qml
    URI specops01_hello_qml
    VERSION 1.0
    QML_FILES
        Main.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appspecops01_hello_qml PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appspecops01_hello_qml
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appspecops01_hello_qml
    PRIVATE
        Qt6::Quick
        Qt6::QuickControls2
)

include(GNUInstallDirs)
install(TARGETS appspecops01_hello_qml
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
