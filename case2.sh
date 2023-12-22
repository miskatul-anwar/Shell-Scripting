#! /usr/bin/bash
icecream=$1
case $icecream in 
  "venila")
    echo "$icecream 100 Dollars";;
  "Chocolate")
    echo "$icecream 250 Dollars";;
  "Garlic")
    echo "$icecream 300 Dollars";;
  *)
    echo "Not available";;
esac

