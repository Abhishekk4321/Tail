

set(SOURCES
    main.cpp
    qml.qrc
    )


set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)


find_package(Qt6 COMPONENTS Quick Qml Core)

if(NOT Qt6_FOUND)
    find_package(Qt5 COMPONENTS Quick Qml Core REQUIRED)
    set(QT_VERSION 5)
else()
    set(QT_VERSION 6)
endif()

add_executable(Tail ${SOURCES})

target_link_libraries(Tail
    Qt${QT_VERSION}::Quick
    Qt${QT_VERSION}::Qml
    Qt${QT_VERSION}::Core
    )
