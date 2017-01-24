//
// Created by florentin on 24/01/17.
//

#ifndef PROJET_IMPLEMENTATION_SLE_ARITH_CASE_H
#define PROJET_IMPLEMENTATION_SLE_ARITH_CASE_H
#include <ac_int.h>
#define WIDTH_IMAGE  320
#define HEIGHT_IMAGE 240
class Arith_Case { // classe pour les cases du tableau
  uint32 Number_Apparition;
  uint32 interval_Start;
  uint32 interval_End;

public:
  Arith_Case();
  Arith_Case(uint16 occurence); //initialise un Arith_Case avec une valeur occurence
  void increment_Apparition(); //augmente le nombre d'apparition
  uint32 getApparition(); //retourne le nombre d'apparition
  void set_Start(uint32 start); //parametre le début de l'intervalle
  uint32 get_Start(); //retourne le début de l'intervalle
  void set_End(uint32 end);//parametre la fin de l'intervalle
  uint32 get_End();//retourne la fin de l'intervalle
};
#endif //PROJET_IMPLEMENTATION_SLE_ARITH_CASE_H
