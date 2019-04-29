#pragma once
#include <QtGlobal>

class Source
{
    public:
    
	Source();
	qreal getTemp();
	qreal getPres();
	qreal getHumi();
	void setTemp(qreal temp);
	void setPres(qreal pres);
	void setHumi(qreal humi);
	virtual bool initialisation() = 0;
	virtual void refresh() = 0;
	~Source();
	
    protected:

	qreal m_temp;
	qreal m_pres;
	qreal m_humi;

};
