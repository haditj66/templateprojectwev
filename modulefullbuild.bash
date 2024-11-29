#!/bin/bash
source ~/.bashrc
var="$PWD"
cd ../QR_Core
oursource
cd $var/rosqt/IF
ourcolcon
oursource
read -p "Press enter to continue if Interface built properly"
cd ../..
ourcolcon
oursource
read -p "Press enter to continue if CPPProject built properly"
cd rosqt
ourcolcon
oursource
read -p "Press enter to continue if ROSProject built properly"
