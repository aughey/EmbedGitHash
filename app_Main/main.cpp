#include <iostream>

extern std::string git_version();

int main(int , char *[]) {
    std::cout << git_version();
    std::cout << "Hello World\n";
    return 0;
}