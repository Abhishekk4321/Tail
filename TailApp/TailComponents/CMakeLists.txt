

set(SOURCE
    loginscreen.cpp)

set(HEADER
    loginscreen.h)

add_library(TailComponents STATIC ${SOURCE} ${HEADER})

find_package(Qt5 COMPONENTS Core Quick)

target_link_libraries( TailComponents
    Qt5::Core
    Qt5::Quick

    )
set_target_properties(TailComponents PROPERTIES AUTOMOC ON)
