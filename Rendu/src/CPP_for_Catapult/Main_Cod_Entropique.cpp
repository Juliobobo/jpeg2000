//
// Created by florentin on 24/01/17.
//

#include "Main_Cod_Entropique.h"

Main_Cod_Entropique::Main_Cod_Entropique(){

}


void Main_Cod_Entropique::Mn_Fonction(uint16 width,
									 uint16 height,
									 ac_int<8, false> Src[WIDTH_IMAGE*HEIGHT_IMAGE],
									 Table_Arith &tableValue) {
  int index = 0;
  for(int i = 0; i < width * height; i++){
	tableValue.add_element(Src[i]);
  }
  tableValue.set_Interval(width * height);
}