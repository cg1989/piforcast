qt5_add_resources(piforcast_SRCS resources.qrc)
add_executable(piforcast main.cpp ${piforcast_SRCS})
target_link_libraries(piforcast Qt5::Qml Qt5::Gui)

