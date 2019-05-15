#pragma once
#include"pch.h"

#ifdef MATHLIBRARY_EXPORTS
#define MATHLIBRARY_API __declspec(dllexport)
#else
#define MATHLIBRARY_API __declspec(dllimport)
#endif
class MATHLIBRARY_API Proj_A_class
{
public:
	Proj_A_class();
	~Proj_A_class();

	int sum(int a, int b);
	int subs(int a, int b);
};

