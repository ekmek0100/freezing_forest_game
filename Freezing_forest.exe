// Welcome to the Freezing Forest Code there are so many codes you can exit this window
// this game is a text-based choice adventure game
//for developers: this game coded with C++ language standard version C++17
//functions: starterChoice to start or exit the game. lvl1, lvl2, lvl3, lvl4 ,lvl5 ,lvl6 to choose what to do in the forest. 
//© 2026 Freezing Forest 



#include <iostream>
#include <cstdlib>
int main() {
    std::cout << "© 2026 Freezing Forest (this game uses Polyform Noncommerial 1.0 liscense!)" << std::endl;
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
    

    lvl1:
    char lvl1Choice;
    std::cout << "You are now in the forest. What would you like to do?" << std::endl;
    std::cout << "1. Explore the forest" << std::endl;
    std::cout << "2. Light a campfire" << std::endl;
    std::cout << "3. Eat a berry" << std::endl;
    std::cin >> lvl1Choice;
    if (lvl1Choice == '3') {
        std::cout << "Sticky got sick and poisoned." << std::endl;
        std::cout << "You have died." << std::endl;
        std::cout << "Game Over." << std::endl;
        exit(0);
    }
    else if (lvl1Choice == '2') {
        std::cout << "You have lit a campfire. You are safe for now." << std::endl;
    } else if (lvl1Choice == '1') {
        std::cout << "You are exploring the forest." << std::endl;
        std::cout << "But you find nothing and return to your camp." << std::endl;
        std::cout << "As you were heading back to the campfire, you stubbed your toe on a stone and fell, breaking your arm and then a wolf appeared." << std::endl;
        std::cout << "You have been attacked by the wolf." << std::endl;
        std::cout << "You have died." << std::endl;
        std::cout << "Game Over." << std::endl;
        exit(0);
    } else {
        std::cout << "Invalid choice." << std::endl;
        goto lvl1;
    }

    lvl2:
    char SecondChoice;
    std::cout << "You are survived on first level" << std::endl;
    std::cout << "What would you like to do next?" << std::endl;
    std::cout << "1. Continue exploring" << std::endl;
    std::cout << "2. Build a shelter" << std::endl;
    std::cin >> SecondChoice;
    if (SecondChoice == '1') {
        std::cout << "You continue exploring the forest but bear attacks you and bear kills you." << std::endl;
        std::cout << "Game Over." << std::endl;
        exit(0);
    } else if (SecondChoice == '2') {
        std::cout << "You have built a shelter. you are safer than before." << std::endl;
        std::cout << "You have survived!." << std::endl;
    } else {
        std::cout << "Invalid choice." << std::endl;
        goto lvl2;
    }


    lvl3:
    char ThirdChoice;
    std::cout << "A Wolf appears!" << std::endl;
    std::cout << "What would you like to do?" << std::endl;
    std::cout << "1. Use a knife" << std::endl;
    std::cout << "2. Run away" << std::endl;
    std::cin >> ThirdChoice;
    if (ThirdChoice == '1') {
        std::cout << "You have used a knife and killed the wolf." << std::endl;
        std::cout << "You have survived!." << std::endl;
    } else if (ThirdChoice == '2') {
        std::cout << "You tried to run away but the wolf caught you and killed you." << std::endl;
        std::cout << "Game Over." << std::endl;
        exit(0);
    } else {
        std::cout << "Invalid choice." << std::endl;
        goto lvl3;
    }


    lvl4:
    char FourthChoice;
    std::cout << "You have survived the wolf attack." << std::endl;
    std::cout << "What would you like to do next?" << std::endl;
    std::cout << "1. Continue exploring" << std::endl;
    std::cout << "2. Make shelter powerful" << std::endl;
    std::cin >> FourthChoice;
    if (FourthChoice == '1') {
        std::cout << "You continue exploring the forest but 100 wasps attack you and poison you." << std::endl;
        std::cout << "The Wasps are attacked to your both of arms." << std::endl;
        std::cout << "You cant do anything and a bear kills you." << std::endl;
        std::cout << "Game Over." << std::endl;
        exit(0);
    } else if (FourthChoice == '2') {
        std::cout << "You have made your shelter more powerful. You are now safe from wild animals." << std::endl;
        std::cout << "You have survived!." << std::endl;
    } else {
        std::cout << "Invalid choice." << std::endl;
        goto lvl4;
    }

    lvl5:
    char FifthChoice;
    std::cout << "You have survived the forest." << std::endl;
    std::cout << "But you so tired and hungry." << std::endl;
    std::cout << "What would you like to do next?" << std::endl;
    std::cout << "1. Eat your snacks in the bag" << std::endl;
    std::cout << "2. Eat Tree Bark" << std::endl;
    std::cin >> FifthChoice;
    if (FifthChoice == '1') {
        std::cout << "You have eaten your snacks and you are now full." << std::endl;
        std::cout << "You have survived!." << std::endl;
        goto lvl6;
    } else if (FifthChoice == '2') {
        std::cout << "You have eaten tree bark but it was not enough to fill your stomach." << std::endl;
        std::cout << "You are still hungry and weak." << std::endl;
        std::cout << "You have not survived" << std::endl;
        std::cout << "Because you did not have enough food to sustain yourself." << std::endl;
        std::cout << "Game Over." << std::endl;
        exit(0);
    } else {
        std::cout << "Invalid choice." << std::endl;
        goto lvl5;
    }

    lvl6:
    char SixthChoice;
    std::cout << "An snowstorm is coming." << std::endl;
    std::cout << "What would you like to do next?" << std::endl;
    std::cout << "1. Stay in your shelter" << std::endl;
    std::cout << "2. Find foods" << std::endl;
    std::cin >> SixthChoice;
    if (SixthChoice == '1') {
        std::cout << "You have stayed in your shelter and survived the snowstorm." << std::endl;
        std::cout << "But the shelter is damaged because of the snowstorm." << std::endl;
        std::cout << "You have survived!." << std::endl;
    } else if (SixthChoice == '2') {
        std::cout << "You have tried to find foods but the snowstorm is too strong and you got lost." << std::endl;
        std::cout << "You are now lost in the forest and you are freezing to death." << std::endl;
        std::cout << "Game Over." << std::endl;
        exit(0);
    } else {
        std::cout << "Invalid choice." << std::endl;
        goto lvl6;
    }


    lvl7:
    char SeventhChoice;
    std::cout << "The forest is really frezzing than first day" << std::endl;
    std::cout << "Your campfire is unlit" << std::endl;
    std::cout << "Previous night cat entered your shelter and you are tamed the cat!" << std::endl;
    std::cout << "What would do like to do next?"<< std::endl;
    std::cout << "1. Go to The river to found fishes and make your shelter stronger"<< std::endl;
    std::cout << "2. Go to your shelter and play with cat" << std::endl;
    std::cin >> SeventhChoice;
    if (SeventhChoice == '1'){
        std::cout << "You are found a few fises and eated with your cat"<< std::endl;
        std::cout << "The cat really likes eat fishes"<< std::endl;
        std::cout << "You are survived!"<< std::endl;}
    else if (SeventhChoice == '2'){
        std::cout << "Tonight, the cat and you froze to death."<< std::endl;
        std::cout << "Game over" << std::endl;
        exit(0);}


    else {
        std::cout << "Invalid choice." << std::endl;
        goto lvl7;
}

    std::cout << "You have survived the Freezing Forest!" << std::endl;
    std::cout << "Just for now..." << std::endl;
    std::cout << "Thank you for playing!" << std::endl;
    std::cout << "You have reached the end of the game!" << std::endl;
    std::cout << "New levels coming soon!" << std::endl;

}

