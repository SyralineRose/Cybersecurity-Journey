#!/bin/bash

# Fixed credentials / DOB for this exercise
USERNAME_EXPECTED="Gandalf"
PASSWORD_EXPECTED="Theonering"
DOB_EXPECTED="14/02"    # dd/mm

# Today’s date in the SAME format as DOB_EXPECTED
current_date=$(date +"%d/%m")

# Empty variables to store user input
username=""
password=""
DayMonth=""

# Loop to collect inputs
for i in {1..3}; do
    if [ "$i" -eq 1 ]; then
        echo "Enter your Username:"
        read -r username
    elif [ "$i" -eq 2 ]; then
        echo "Confirm the day and month you were born (dd/mm):"
        read -r DayMonth
    else
        echo "Enter your password:"
        read -rs password
        echo
    fi
done

# --- Checks ---
if [ "$username" = "$USERNAME_EXPECTED" ] && \
   [ "$DayMonth" = "$DOB_EXPECTED" ] && \
   [ "$password" = "$PASSWORD_EXPECTED" ] && \
   [ "$current_date" = "$DOB_EXPECTED" ]; then

    echo "Authentication Successful. Happy Birthday! Let's have fireworks."

elif [ "$username" = "$USERNAME_EXPECTED" ] && \
     [ "$DayMonth" = "$DOB_EXPECTED" ] && \
     [ "$password" = "$PASSWORD_EXPECTED" ]; then

    echo "Authentication Successful. You can now complete your Journey to Middle Earth."

else
    echo "You Shall Not Pass!"
fi
