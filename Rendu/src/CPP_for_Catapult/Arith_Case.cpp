//
// Created by florentin on 24/01/17.
//

#include "Arith_Case.h"
Arith_Case::Arith_Case()
	: Number_Apparition(0), interval_Start(), interval_End()
{
}

Arith_Case::Arith_Case(uint16 occurence)
	: Number_Apparition(occurence), interval_Start(0), interval_End(0)
{
}

uint32 Arith_Case::getApparition() { return Number_Apparition; }

void Arith_Case::increment_Apparition()
{
  ++Number_Apparition;
}


void Arith_Case::set_Start(uint32 start)
{
  interval_Start = start;
}

uint32 Arith_Case::get_Start()
{
  return interval_Start;
}
uint32 Arith_Case::get_End()
{
  return interval_End;
}

void Arith_Case::set_End(uint32 end)
{
  interval_End = end;
}
