#!/bin/bash

finished=0

while [ $finished -ne 1 ]
do
    echo "What are your favorite chips?"

    echo "1 - Takis"
    echo "2 - Doritos Cool Ranch"
    echo "3 - Doritos Nacho Cheese"
    echo "4 - Dynamites"
    echo "5 - Chester's fries"
    echo "6 - Something else"
    echo "7 - Quit because I'm a butthead"

    read chips;

    case $chips in
        1) echo "Ahhh yes, Kordyn's favorite.";;
        2) echo "A classic.";;
        3) echo "Meh.";;
        4) echo "Gross.";;
        5) echo "My favorite out of the choices.";;
        6) echo "Welp, there are lots of different varieties of chips out there.";;
        7) finished=1;;
        *) echo "You didn't enter an appropriate choice."
    esac
done

echo "Thanks for participating!"
