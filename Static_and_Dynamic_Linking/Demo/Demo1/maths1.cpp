#include "pch.h"
#include "maths1.h"
#include<iostream >

maths1::maths1()
{

	std::cout << "maths1  CTOR called" << std::endl;
}


maths1::~maths1()
{
}


int maths1::sum(int a, int b) { return(a + b); }