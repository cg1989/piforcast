#include "src_prometheus.h"
#include "sws/client_http.hpp"
#include <fstream>
#include <QString>
#include <string>
/*!
 * \file src_prometheus.cpp
 * \brief réecriture des méthodes initialisation et refresh lorsque le projet doit récupérer la donnée sur le réseau.
 * \author Camille Geimer & Dominique Jau
 * \version 1.0
 */

using namespace std;
using HttpClient = SimpleWeb::Client<SimpleWeb::HTTP>;

bool Src_prometheus::initialisation(){
    return true;
}

void Src_prometheus::refresh() {
    HttpClient client("192.168.1.101:8080");
  try {
    auto r1 = client.request("GET", "/metrics");
    stringstream ss;
    ss << r1->content.rdbuf();
    string buf;
    qreal value;
    while(ss>>buf) {
	//cout << " - " << buf << endl;
	if (buf.find("temperature{meteo=\"temp\"}") != std::string::npos ) {
	    ss>>buf;
	    QString tmp = QString::fromStdString(buf);
#ifdef __arm__
	    m_temp = tmp.toFloat();
#else
	    m_temp = tmp.toDouble();
#endif
	}
	if (buf.find("humidity{meteo=\"humid\"}") != std::string::npos ) {
	    ss>>buf;
	    QString tmp = QString::fromStdString(buf);
#ifdef __arm__
	    m_humi= tmp.toFloat();
#else
	    m_humi = tmp.toDouble();
#endif
	}
	if (buf.find("pressure{meteo=\"press\"}") != std::string::npos ) {
	    ss>>buf;
	    QString tmp = QString::fromStdString(buf);
#ifdef __arm__
	    m_pres= tmp.toFloat();
#else
	    m_pres = tmp.toDouble();
#endif
	}
    }
    
  }
  catch(const SimpleWeb::system_error &e) {
    cerr << "Client request error: " << e.what() << endl;
  }

}
