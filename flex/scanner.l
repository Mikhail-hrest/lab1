%option c++
%option noyywrap
%x SERVER NAME SIGN TAIL
%{
//%x NAME SIGN TAIL
#include "flex.h"
#include <iostream>
std::string name_of_var;
std::vector<std::string> Arr_of_str;


/*

<INITIAL>{
	^(?i:ftp\:\/\/[a-z]{1,20}@) BEGIN(SERVER);
	\n return 0;
	. ;
}
<SERVER>{
	(?i:[a-z]{1,20})/(?i:\.([a-z]{1,20}\.)*[a-z]{1,5})\n {BEGIN(TAIL); return 1;}
	. BEGIN(INITIAL);
	\n {BEGIN(INITIAL); return 0;}
}
<TAIL>{
	. ;
	\n BEGIN(INITIAL);
}

*/
%}

%%

<INITIAL>
{
[" "\t]*<-[" "\t]* {BEGIN(NAME);}
\n {return 0;}
. ;
}
<NAME>{
([!a-zA-Z][a-zA-Z0-9]{0,15})/([" "\t]*#.*) {Arr_of_str.push_back(yytext);BEGIN(TAIL); return 1;}
([!a-zA-Z][a-zA-Z0-9]{0,15}) {Arr_of_str.push_back(yytext);BEGIN(SIGN);}
. BEGIN(INITIAL);
\n {BEGIN(INITIAL); return 0;}
}
<SIGN>{
([" "\t]*[\&\|\^][" "\t]*) {BEGIN(NAME);};
\n {BEGIN(INITIAL);return 0;}
. {BEGIN(INITIAL);};
}
<TAIL>{
. ;
\n {BEGIN(INITIAL);}
}


%%

namespace Flex{

bool Flex::check_string(std::string &str){
	yyFlexLexer ftp;
	std::stringstream ss; 
    ss << str; 
    ftp.switch_streams(ss, std::cout);
	if(ftp.yylex()){
		//std::cout << "size of Arr = " << Arr_of_str.size() << "\n";
		this->arr = Arr_of_str;
		Arr_of_str.clear();
		return 1;
	}
	Arr_of_str.clear();
	return 0;	
}

}
/*
int main(){
	yyFlexLexer ftp;
	std::cout << "enter your string -> ";
	if(ftp.yylex()){
		std::cout<<"good"<<std::endl;
		for(auto s : Arr_of_str) std::cout << s << " ";
		std::cout << std::endl;
	}
	else std::cout<<"bad"<<std::endl;
	
	return 0;
}
*/