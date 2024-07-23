#!/bin/bash

# UV index recommendation calculator
    # 0-2 Low (minimal protection required.)
    # 3-7 Moderate to High (standard protection required.)
    # 8+ Very high to extreme (Full protection required.)

read -p "Enter a UV Index value from 0-11: " uvvalue

if [ "$uvvalue" -le 2 ] ; then
    echo "The UV Index is Low - Minimal protection is required."
elif [[ "$uvvalue" -ge 3 ]] && [[ "$uvvalue" -le 7 ]] ; then
    echo "The UV Index is Moderate to High - Moderate protection is required."
elif [[ "$uvvalue" -ge 8 ]] && [[ "$uvvalue" -le 11 ]] ; then
    echo "The UV Index is Very High to Extreme - Full protection is required."
else
    echo "Invalid UV Index value entered."
fi