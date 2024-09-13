#include "AppClass.h"

using namespace statemap;

int main(int argc,char* argv[]){
	AppClass thisContext;
	int retcode = 0;
	if(argc<2){
		std::cerr << "No string to check." << std::endl;
		retcode = 2;
	} else if (argc > 2) {
		std::cerr << "Only one argument is accepted." << std::endl;
		retcode = 3;
	} else {
		std::cout << "The string \"" << argv[1] << "\" is ";
		std::string s= argv[1];
		try{
			if(thisContext.check_string(s) == false){
				std::cout << "not acceptable." << std::endl;
				retcode = 1;
			} else {
				std::cout << "accepted." << std::endl;
			}
		} catch (const SmcException &smcex){
			std::cout << "not acceptable - "
				<< smcex.what()
				<< '.'
				<< std::endl;
			retcode = 1;
		}
	}
	return retcode;
}
