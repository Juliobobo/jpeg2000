//
// Created by florentin on 24/01/17.
//

#ifndef PROJET_IMPLEMENTATION_SLE_TABLE_ARITH_H
#define PROJET_IMPLEMENTATION_SLE_TABLE_ARITH_H
#include "Arith_Case.h"
#include <ac_int.h>
#define WIDTH_IMAGE  320
#define HEIGHT_IMAGE 240
class Table_Arith {
  Arith_Case tableau_Value[256];

public:
  Table_Arith();
  Arith_Case getCase(uint8 Id); //renvoie l'arith_case correspondant à la valeur ID de la table
  uint32 total_Occurence(); //renvoie le nombre total d'occurence
  void add_element(uint8 element); //ajoute une valeur à la table
  void set_Interval(uint32 nombre_Total); //remplis les intervalles pour chaque valeur
  void fill_table(uint16 occurence[256]); //remplis la table à partir d'une autre table
  uint32 max_Interval(uint32 nombre_Total); //retourne la borne supérieur en 9999....9
};
#endif //PROJET_IMPLEMENTATION_SLE_TABLE_ARITH_H
