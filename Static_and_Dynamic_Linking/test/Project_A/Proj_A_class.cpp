#include "pch.h"
#include "Proj_A_class.h"
#include<iostream>

Proj_A_class::Proj_A_class()
{

	std::cout << "Into Proj_A class";
}


Proj_A_class::~Proj_A_class()
{
}


int Proj_A_class:: sum(int a, int b) { return(a + b); }
int Proj_A_class::subs(int a, int b) { return(a - b); }