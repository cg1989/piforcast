#include "sws/server_http.hpp"
#include "sensors.h"
#include <algorithm>
#include <fstream>
#include <vector>

using namespace std;
using HttpServer = SimpleWeb::Server<SimpleWeb::HTTP>;
struct bme280_dev dev;

float convert_pres(float pres, float alt, float temp){
    float kelvin = temp + 273.15;
    return pres+1013.25*(1-pow((kelvin-0.0065*alt)/kelvin,5.255));
}

int main() {
  // HTTP-server at port 8080 using 1 thread
  // Unless you do more heavy non-threaded processing in the resources,
  // 1 thread is usually faster than several threads
  HttpServer server;
  dev = init();

  server.config.port = 8080;

  server.resource["^/metrics$"]["GET"] = [](shared_ptr<HttpServer::Response> response, shared_ptr<HttpServer::Request> request) {
    stringstream stream;
    struct bme280_data data = getData(&dev);
    
    stream << "# HELP temperature Temperatures" << endl;
    stream << "# TYPE temperature gauge" << endl;
    stream << "temperature{meteo=\"temp\"} " << data.temperature << endl;
    stream << "# HELP humidity Humidite" << endl;
    stream << "# TYPE humidity gauge" << endl;
    stream << "humidity{meteo=\"humid\"} " << data.humidity << endl;
    stream << "# HELP pressure Pression" << endl;
    stream << "# TYPE pressure gauge" << endl;
    stream << "pressure{meteo=\"press\"} " << convert_pres(data.pressure/100,151, data.temperature) << endl;

    response->write(stream);
  };

  server.start();
}
