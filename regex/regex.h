#ifndef LAB1_REGEX_H
#define LAB1_REGEX_H

#include "../Parrent.h"

namespace Regex{

	class Regex : public Recogn{
	public:
		Regex();
		bool check_string(std::string &str) override;
	};

}

#endif
