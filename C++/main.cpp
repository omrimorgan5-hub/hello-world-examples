#include <iostream>
#include <ctime>


int main() {
    std::string name;
    printf("Enter a name:");
    std::getline(std::cin, name);
    std::time_t now = std::time(nullptr);
    printf("Hello, %s! Welcome to the C++ programming language.\n", name.c_str());
    printf("Current time: %s", std::ctime(&now));
    return 0;
}