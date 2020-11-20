#!/bin/bash -e
#						 ↑
# debug [-x -v]:[complete, abbreviated]
# Brief:	Script que construye el gafrc para los simbolos de gEDA o lepton
# Author: Johnny Cubides
# e-mail: jgcubidesc@gmail.com
# date: Friday 20 November 2020
status=$?

build(){
  cd ../
  PATH_REP=`pwd`
  cd ./symbol2gafrc/
  PATH1="\"$PATH_REP/symbols/bjt\" \"bjt\""
  PATH2="\"$PATH_REP/symbols/mosfet\" \"mosfet\""
  # path2="/home/`whoami`/basededatos/symbol_gEDA_ngspice/voltage_current_source"
  # path3="/home/`whoami`/basededatos/symbol_gEDA_ngspice/switches"
  # path4="/home/`whoami`/basededatos/symbol_gEDA_ngspice/ngspice"
  # path5="/home/`whoami`/basededatos/symbol_gEDA_ngspice/transistors"
  # path6="/home/`whoami`/basededatos/symbol_gEDA_ngspice/ammeter"
  echo "Creando archivo gafrc, el cual permite el enlace 
      de simbolos creados por usted para los esquematicos hechos
      con schem"

  echo ";path para simbolos creados por usted" > gafrc
  echo "(component-library $PATH1)" >> gafrc
  echo "(component-library $PATH2)" >> gafrc
  # echo "(component-library "'"'$path2'"'")" >> gafrc
  # echo "(component-library "'"'$path3'"'")" >> gafrc
  # echo "(component-library "'"'$path4'"'")" >> gafrc
  # echo "(component-library "'"'$path5'"'")" >> gafrc
  # echo "(component-library "'"'$path6'"'")" >> gafrc
}

geda(){
  mv -i -v gafrc ~/.gEDA
  echo "Operacion realizada"
}

lepton(){
  mkdir -p ~/.config/lepton-eda/
  mv -i -v gafrc ~/.config/lepton-eda/
  echo "Operacion realizada"
}


# Permite guardar información acerca de comandos usados
if [ "$1" = "-h" ] || [ "$1" = "" ] || [ "$1" = "--help" ];
then
  printf "Help for this command simbol_to_gafrc.sh\n"
  printf "\tsimbol_to_gafrc.sh Command options\n"
  printf "\t[Commands]\n"
  printf "\t\tgeda\tcrear archivo graf para gEDA\n"
  printf "\t\tlepton\tCrear archivo gafrc para lepton-eda\n"
  printf "\t\tcommand3\tbrief3\n"
  printf "\t\t-h,--help\tHelp\n"
  printf "\nRegards Johnny.\n"
elif [ "$1" = "geda" ];
then
  build
  geda 
elif [ "$1" = "lepton" ];
then
  build
  lepton 
elif [ "$1" = "command3" ];
then
  echo "pass"
fi

