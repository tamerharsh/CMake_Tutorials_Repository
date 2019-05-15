#ifndef CALCULATOR_HPP
#define CALCULATOR_HPP


#include<iostream>
class calculator{ 
int num1_, num2_;
public:
	calculator(int num1, int num2);

	int mul();
	int add();
	void print();

    ~calculator();
};


#endif //CALCULATOR_HPP