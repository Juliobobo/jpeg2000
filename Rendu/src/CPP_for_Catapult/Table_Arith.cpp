//
// Created by florentin on 24/01/17.
//

#include "Table_Arith.h"

Table_Arith::Table_Arith() {
  for (int i = 0; i < 256; ++i) {
	tableau_Value[i] = Arith_Case();
  }

}

Arith_Case Table_Arith::getCase(uint8 Id) {
  return tableau_Value[Id]; }

uint32 Table_Arith::total_Occurence() {
  uint32 stock = 0;
  for (int i = 0; i < 256; i++) {
	stock = stock + tableau_Value[i].getApparition();
  }
  return stock;
}

void Table_Arith::fill_table(uint16 occurence[256]) {
  for (int i = 0; i < 256; i++) {
	tableau_Value[i] = Arith_Case(occurence[i]);
  }
}

void Table_Arith::add_element(uint8 element) {
  tableau_Value[element].increment_Apparition();
}

void Table_Arith::set_Interval(uint32 nombre_Total) {
  uint32 val_max = max_Interval(nombre_Total);
  uint32 total = total_Occurence();
  uint32 tmp = 0;
  tableau_Value[0].set_Start(0);
  uint32 apparition = tableau_Value[0].getApparition();
  if (total != 0)
	tmp = ((apparition * val_max) / total);
  else {
	return;
  }
  tableau_Value[0].set_End(tmp);
  for (int i = 1; i < 256; i++) {
	tableau_Value[i].set_Start(tableau_Value[i - 1].get_End());
	apparition = tableau_Value[i].getApparition();
	tmp = (apparition * val_max) / total;
	tableau_Value[i].set_End(tableau_Value[i].get_Start() +
		tmp);
	if(i == 255){
	  tableau_Value[i].set_End(val_max);
	}
  }
}

uint32 Table_Arith::max_Interval(uint32 nombre_Total) {
  uint32 val_Max = 9;
  while(val_Max < nombre_Total){
	val_Max = val_Max * 10 +9;
  }
  return val_Max;
}
