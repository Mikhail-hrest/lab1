#include "AppClass_sm.h"
#include "../Parrent.h"
#include <string>

class AppClass : public Recogn{
private:
	AppClassContext fsm;
	bool isNameSpace;
	bool isAcceptable;
	bool error = false;
public:
	std::vector<std::string> Ar;
	int lens;
	std::string name = "";
	AppClass();
	~AppClass() {};
	bool check_string(std::string &str);
	inline void Acceptable(){
		isAcceptable = true;
	}
	inline void Unacceptable(){
        isAcceptable = false;
    }
	inline void isError(){error = true;}
	inline void NameSpace(){
		lens = 1;
		isNameSpace = true;
	}
	inline void UnNameSpace(){
		if(name != "") Ar.push_back(name);
		lens = 0;
		name = "";
		isNameSpace = false;
	}
	inline void pluslen(){
		lens++;
		if(lens > 16) isError();
	}
};
