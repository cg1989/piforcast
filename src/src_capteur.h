#pragma once
#include "source.h"
#include "bme280.h"

class Src_capteur : public Source
{
    public:
	bool initialisation();
	void refresh();
    private:
	struct bme280_dev m_dev;
};    