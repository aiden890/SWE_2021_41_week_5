#!/bin/bash

cd files
for letter in {a..z} {A..Z}; do
  if ls "${letter}"*.txt 1> /dev/null 2>&1; then
    mv "${letter}"*.txt ../"${letter}"
  fi
done

cd ..