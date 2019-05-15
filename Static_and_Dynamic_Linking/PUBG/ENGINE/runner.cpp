#include "pch.h"
#include "runner.h"
#include<iostream>

runner::runner()
{

	std::cout << "engine:runner";
}


runner::~runner()
{
}

void runner::run_app(int a) { a = 0; std::cout << "runner stoped "; }