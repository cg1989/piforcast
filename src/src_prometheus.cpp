#include "src_prometheus.h"
#include "sws/client_http.hpp"
#include <fstream>
#include <QString>
#include <string>

using namespace std;
using HttpClient = SimpleWeb::Client<SimpleWeb::HTTP>;

bool Src_prometheus::initialisation(){
    return true;
}

void Src_prometheus::refresh() {
    HttpClient client("192.168.1.22:9090");
  try {
    auto r1 = client.request("GET", "/metrics");
    stringstream ss;
    ss << r1->content.rdbuf();
    string buf;
    qreal value;
    while(ss>>buf) {
	//cout << cnt << " - " << buf << endl;
	if (buf.find("go_gc_duration_seconds") != std::string::npos && buf.find("quantile=\"0.5\"") != std::string::npos) {
	    ss>>buf;
	    QString tmp = QString::fromStdString(buf);
#ifdef __arm__
	    value = tmp.toFloat();
#else
	    value = tmp.toDouble();
#endif
	}
    }
    
  }
  catch(const SimpleWeb::system_error &e) {
    cerr << "Client request error: " << e.what() << endl;
  }

}
