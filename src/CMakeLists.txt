qt5_add_resources(piforcast_SRCS resources.qrc)

find_package(Boost COMPONENTS system thread REQUIRED)

set_property(SOURCE main.cpp PROPERTY SKIP_AUTOGEN ON)
add_executable(piforcast bme280.c sensors.c capteur.cpp source.cpp src_capteur.cpp src_prometheus.cpp main.cpp ${piforcast_SRCS})
target_link_libraries(piforcast Qt5::Qml Qt5::Gui ${Boost_LIBRARIES})
target_include_directories(piforcast INTERFACE ${Boost_INCLUDE_DIR})

