#include "source.h"
    /*!
 * \file source.cpp
 * \brief setteur et getteur de base
 * \author Camille Geimer & Dominique Jau
 * \version 1.0
 */
/*!
 * \class Source source.h  
 * \brief setteur et getteur pour les métriques, utilisé lors de la reception des données.
 */
    
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
