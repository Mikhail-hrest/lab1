#ifndef LAB1_FLEX_H
#define LAB1_FLEX_H
#include "../Parrent.h"

namespace Flex{
	class Flex : public Recogn
	{
	public:
		Flex() {};
		bool check_string(std::string &str) override;
	};
}

#endif
