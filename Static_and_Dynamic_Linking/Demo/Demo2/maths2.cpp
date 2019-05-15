#include "pch.h"
#include "maths2.h"
#include<iostream>

maths2::maths2()
{

	std::cout << "CLASS 2 CTOR CALLED" << std::endl;
}


maths2::~maths2()
{
}



int maths2::diff(int a, int b) { return(a - b); }