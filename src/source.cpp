#include "source.h"
    
    Source::Source(){
	
    }
    
    qreal Source::getTemp(){
	return m_temp;
    }
    
    qreal Source::getPres(){
	return m_pres;
    }
    
    qreal Source::getHumi(){
	return m_humi;
    }
    
    void Source::setTemp(qreal temp){
	m_temp = temp;
    }
    
    void Source::setPres(qreal pres){
	m_pres = pres;
    }
    
    void Source::setHumi(qreal humi){
	m_humi = humi;
    }
    
    Source::~Source(){
	
    }