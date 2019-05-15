#include<iostream>
#include "calculator.h"



calculator::calculator(int num1, int num2):num1_(num1),num2_(num2){}

int calculator::mul(){return(num1_*num2_);}

int calculator::add(){return(num1_+num2_);}

void calculator::print()
{
	std::cout<<"num1 and num2 "<<num1_ <<" "<<num2_<<std::endl;
	std::cout<<"multiply: "<<mul()<<std::endl;
	std::cout<<"addition: "<<add()<<std::endl;
}

calculator::~calculator(){}