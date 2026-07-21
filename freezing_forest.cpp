// Welcome to the Freezing Forest Code there are so many codes you can exit this window
// this game is a text-based choice adventure game
//for developers: this game coded with C++ language standard version C++17
//functions: starterChoice to start or exit the game. FirstChoice(first level) to choose what to do in the forest. 




#include <iostream>
#include <cstdlib>
int main() {
    std::cout << "Welcome to the Freezing Forest!" << std::endl;
    std::cout << "press 1 to enter the forest, or 2 to exit." << std::endl;
    std::cout << "please dont input 9+ numbers (only 1 character supported)" << std::endl;
    
    
    starterchoice:
    char StartChoice;
    std::cin >> StartChoice;
    if (StartChoice == '1') {
        std::cout << "You have entered the forest. Be careful!" << std::endl;
    } else if (StartChoice == '2') {
        std::cout << "You have exited the forest. Goodbye!" << std::endl;
        exit(0);
    } else {
        std::cout << "Invalid choice." << std::endl;
        goto starterchoice;
    }
    

    gamestart:
    char FirstChoice;
    int fishes = 0;
    std::cout << "You are now in the forest. What would you like to do?" << std::endl;
    std::cout << "1. Explore the forest" << std::endl;
    std::cout << "2. Light a campfire" << std::endl;
    std::cout << "3. Eat a berry" << std::endl;
    std::cin >> FirstChoice;
    if (FirstChoice == '3') {
        std::cout << "Sticky got sick and poisoned." << std::endl;
        std::cout << "You have died." << std::endl;
        std::cout << "Game Over." << std::endl;
        exit(0);
    }
    else if (FirstChoice == '2') {
        std::cout << "You have lit a campfire. You are safe for now." << std::endl;
    } else if (FirstChoice == '1') {
        std::cout << "You found a few fishes (+2 fishes)" << std::endl;
        fishes += 2;
        std::cout << "You now have " << fishes << " fishes." << std::endl;
    } else {
        std::cout << "Invalid choice." << std::endl;
        goto gamestart;
    }





}