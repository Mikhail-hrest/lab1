#include <iostream>
#include "flex.h"

int main(){
    Flex::Flex l;
    std::string s = "<-asd#";
    std::cout << l.check_string(s);
    return 0;
}