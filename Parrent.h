#ifndef LAB1_PARRENT_H
#define LAB1_PARRENT_H

#include <iostream>
#include <assert.h>
#include <string>
#include <sstream>
#include <chrono>
#include <vector>
#include <regex>

struct Data{
        std::string str;
        int count;
};

class Memory{
public:
        Memory() = default;
        void clear(){
                Arr.erase(Arr.begin(), Arr.end());
        }
        void app(std::string str){
                for(auto& i : Arr){
                        if(i.str == str){
                                i.count++;
                                return ;
                        }
                }
                Data date = {str, 1};
                Arr.push_back(date);
        }
	void app(std::vector<std::string> arr){
		for(auto& i : arr) this->app(i);
	}
        void show(){
                std::cout<<"\nResult memory: ->\n";
                for(Data& i : Arr) std::cout<<i.str<<" - "<<i.count<<std::endl;
        }
private:
        std::vector<Data> Arr;
};

class Recogn
{
public:
        std::vector<std::string> arr;
        Recogn(){};
        virtual bool check_string(std::string &str) = 0;
	~Recogn(){};
};

#endif
