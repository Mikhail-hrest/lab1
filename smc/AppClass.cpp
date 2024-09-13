#include "AppClass.h"

AppClass::AppClass() : fsm(*this), isNameSpace(false), isAcceptable(false){
	fsm.setDebugFlag(true);
}

bool AppClass::check_string(std::string &str){
	std::vector<std::string> A;
	for(int i = 0; i < str.length(); ++i){
		if(str[i] == ' ' || str[i] == '\t') fsm.Space();
        else if((str[i] >= 65 && str[i] <= 90) ||
			(str[i] >= 97 && str[i] <= 122) ||
                        (str[i] >= 48 && str[i] <= 57)) {
			name+=str[i];
			fsm.Name();
		} else if(str[i] == '!') {
			name+=str[i];
			fsm.ExcMark();
		}
		else if(str[i] == '|' || str[i] == '^' || str[i] == '&') fsm.Sign();
		else if(str[i] == '#') fsm.End();
		else if(str[i] == '<') fsm.PreBegin();
		else if(str[i] == '-') fsm.Begin();
		else fsm.Unexcept();
		
	}
	fsm.EOS();
	if(error){
		Ar.clear();
		return false;
	}
	arr = Ar;
	Ar.clear();
	return isAcceptable;
}
