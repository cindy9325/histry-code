#include "function.h"
#include <iostream>

Animal::Animal(Zoo *zoo, string name){
    zoo->born(name);
    belong = zoo;
    species = name;
} // TODO
Dog::Dog(Zoo *zoo)
: Animal(zoo , "Dog"){
}// TODO
Dog::~Dog(){
}// TODO
Cat::Cat(Zoo *zoo)
: Animal(zoo , "Cat"){
} // TODO
Cat::~Cat(){
} // TODO
Caog::Caog(Zoo *zoo)
: Animal(zoo , "Caog"),Dog(zoo) , Cat(zoo){
}        // TODO
void Caog::barking(){
    std::cout << "woof!woof!meow!\n";
} // TODO
void Caog::carton(){
    std::cout << "it looks so happy!\n";
}          // TODO
void Caog::throwBall(){
    std::cout << "it looks happy!\n";
}       // TODO
Caog::~Caog(){
}                // TODO
