#include "regex.h"

namespace Regex{

	Regex::Regex() {};

	bool Regex::check_string(std::string &str){
		bool flag;
		std::regex reg("[\\s]*<-[\\s]*([!a-zA-Z][a-zA-Z0-9]{0,15})[\\s]*([&|^][\\s]*([!a-zA-Z][a-zA-Z0-9]{0,15})[\\s]*)*#[\\s]*");
		flag = std::regex_match(str, reg);
		if(!flag) return flag;
		std::string name = "[!a-zA-z0-9][a-zA-z0-9]{0,15}";
		std::smatch res;
		std::regex search_pattern("[\\w!0-9]+");

		auto words_begin = std::sregex_iterator(str.begin(), str.end(), search_pattern);
		auto words_end = std::sregex_iterator();
		std::vector<std::string> arr;
		for (std::sregex_iterator i = words_begin; i != words_end; ++i){
			std::smatch match = *i;
			std::string match_str = match.str();
			//std::cout << match_str << '\n';
			arr.push_back(match_str);
		}
		this->arr = arr;
		return 1;
	}

}
