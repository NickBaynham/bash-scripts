#!/bin/bash

read USER_INPUT
if [ "$USER_INPUT" = "n" ] || [ "$USER_INPUT" = "N" ]; then
  echo "NO"
else
  if [ "$USER_INPUT" = "y" ] || [ "$USER_INPUT" = "Y" ]; then
    echo "YES"
  fi
fi

