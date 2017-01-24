//
// Created by florentin on 24/01/17.
//

#ifndef PROJET_IMPLEMENTATION_SLE_MAIN_COD_ENTROPIQUE_H
#define PROJET_IMPLEMENTATION_SLE_MAIN_COD_ENTROPIQUE_H
#include "Arith_Case.h"
#include "Table_Arith.h"
#include <ac_int.h>
#define WIDTH_IMAGE  320
#define HEIGHT_IMAGE 240
class Main_Cod_Entropique
{
public:
  Main_Cod_Entropique();
  /*Mn_fonction256 : fonction principale pour l'utilisation des pixels sur 8 bits*/
  static void Mn_Fonction(uint16 width, uint16 height,
							 ac_int<8, false> Src[HEIGHT_IMAGE*WIDTH_IMAGE],
							 Table_Arith &tableValue);
};
#endif //PROJET_IMPLEMENTATION_SLE_MAIN_COD_ENTROPIQUE_H
