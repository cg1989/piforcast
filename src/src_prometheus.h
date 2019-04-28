#pragma once
#include "source.h"

class Src_prometheus : public Source
{
    public:
	bool initialisation();
	void refresh();
    private:
};    