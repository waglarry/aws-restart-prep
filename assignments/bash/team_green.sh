#!/bin/bash
echo "What is your name?"
read NAME

MAX=$(ls -1 "${NAME}"* 2>/dev/null | grep -oE '[0-9]+' | sort -n | tail -n 1)
if [ -z "$MAX" ]; then
            MAX=0
fi

COUNT=$((MAX + 1))
MAX=$((COUNT + 24))

while [ $COUNT -le $MAX ]
do
            touch "${NAME}${COUNT}.txt"
                echo "Creating file ${NAME}${COUNT}.txt"
                    ((COUNT++))
            done

            echo "All files created"

            echo "Do you want to delete the empty files (y/n)"
            read RESPONSE
            if [ "${RESPONSE,,}" = "y" ]
            then
                        rm -f "${NAME}"*.txt
                            echo "Empty files deleted"
                    else
                                echo "Files maintained"
            fi
