qt5_add_resources(piforcast_SRCS resources.qrc)
set_property(SOURCE main.cpp PROPERTY SKIP_AUTOGEN ON)
add_executable(piforcast main.cpp ${piforcast_SRCS})
target_link_libraries(piforcast Qt5::Qml Qt5::Gui)

