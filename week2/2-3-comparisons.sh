#!/bin/bash

# -eq is equal to if [ "$a" -eq "$b" ]
# -ne is not equal to if [ "$a" -ne $"$b" ]
# -gt is greater than if [ "$a" -gt "$b" ]
# -ge is greater than or equal to if ["$a" -ge "$b" ]
# -lt is less than if [ "$a" -lt "$b" ]
# -le is less than or equal to if [ "$a" -le "$b" ]

val_a=25
val_b=20

# -eq demonstration

if [ "$val_a" -eq "$val_b" ] ; then
    echo "The integers are the same"
else
    echo "The integers are not the same"
fi

# -ne demonstration

if [ "$val_a" -ne "$val_b" ] ; then
    echo "The integers are not the same"
else
    echo "The integers are the same"
fi

# -gt demonstration

if [ "$val_a" -gt "$val_b" ] ; then
    echo "val_a is greater than val_b"
else
    echo "val_a is not greater than val_b"
fi

