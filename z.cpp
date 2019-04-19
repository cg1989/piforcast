
#include <iostream>
#include <vector>

using namespace std; 

int z::tendance(vector<qreal>  vec){
    int tend = 0;
    if (vec.size() != 0){
		    if(vec.size() > 59){
            vec.erase(vec.begin());
			}
        qreal tmp = vec.front() - vec.back();
        if(tmp > 0.3){
            tend = 1;
        }else if(tmp < -0.3){
            tend = -1;
        }else{
            tend = 0;
        }
        //cout << tend << endl;
        return tend;
    }
}

int z::zambretti_prev(float pres, string tend, int mois) {
int zambetti;

switch(tend) {
	case -1:				// Falling
		if (pres>=1030)
			return 2;
		if (pres>=1020)
			return 8;
		if (mois>=4&&mois<=9) {	// Summer
			if (pres>=1010)
				return 18;
			if (pres>=1000)
				return 21;
			if (pres>=990)
				return 24;
		} else {			// Winter
			if (pres>=1010)
				return 15;
			if (pres>=1000)
				return 21;
			if (pres>=990)
				return 22;
		}
		if (pres>=980)
			return 24;
		return 26;
	case 1:					// Raising
		if (pres>=1030)
			return 1;
		if (pres>=1020)
			return 2;
		if (m_month>=4&&m_month<=9) {	// Summer
			if (pres>=1010)
				return 3;
			if (pres>=1000)
				return 7;
			if (pres>=990)
				return 9;
			if (pres>=980)
				return 12;
		} else {			// Winter
			if (pres>=1010)
				return 6;
			if (pres>=1000)
				return 7;
			if (pres>=990)
				return 10;
			if (pres>=980)
				return 13;
		}
		return 17;
	case 0:					// Steady
	default:
		if (pres>=1030)
			return 1;
		if (pres>=1020)
			return 2;
		if (pres>=1010)
			return 11;
		if (pres>=1000)
			return 14;
		if (pres>=990)
			return 19;
		if (pres>=980)
			return 23;
		if (pres>=970)
			return 24;
		return 26;
	}


return zambetti;
}
