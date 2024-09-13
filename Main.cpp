#include <iostream>
#include "flex/flex.h"
#include "regex/regex.h"
#include "smc/AppClass.h"

int main(int argc, char* argv[]){
	Memory* mem = new Memory;
	Recogn *fl;
	std::cout << "Enter argument: \nRegex -> 0\nFlex-> 1\n";
	int argument = std::stoi(argv[1]);
	switch(argument){
		case 0:
			std::cout << "\n===REGEX===\n";
			fl = new Regex::Regex;
			break;
		case 1:
			std::cout << "\n===FLEX===\n";
			fl = new Flex::Flex;
			break;
		case 2:
			std::cout << "\n===SMC===\n";
			fl = new AppClass;
			break;
		default:
			std::cout<<"\nERROR\nEnd of programm\n";
			return 0;
	}
	std::string str;
	//std::cin.ignore();
	int iters = 0;
	double total_time = 0.0;
	std::cout << "Write the string -> ";
	std::getline(std::cin, str);
	while(!std::cin.eof()){
		std::cout<<"The string \"" << str << "\" is ";
		++iters;
		auto start = std::chrono::system_clock::now();
		bool flag = fl->check_string(str);
		auto end = std::chrono::system_clock::now();
		std::chrono::duration<double, std::milli> time = end - start;
		total_time+=time.count();
		if(!flag) std::cout << "not accptable.\n";
		else{
			std::cout << "acceptable.\n";
			mem->app(fl->arr);
		}
		std::cout << "Write the string -> ";
		//std::cin.ignore();
		std::getline(std::cin, str);
	}
	total_time/=iters;
	std::cout << "\n = average execution time - " << total_time << "ms = \n";
	mem->show();
	delete mem;
	delete fl;
	return 0;
}
