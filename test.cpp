#include <iostream>

int main() {
#ifdef DEBUG
    std::cout << "DEBUG is defined. Test passed." << std::endl;
#else
    std::cerr << "DEBUG is not defined. Test failed." << std::endl;
#endif
    return 0;
}