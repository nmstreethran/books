#!/bin/bash

# convert all project gutenberg books in the
# project-gutenberg directory from .txt to .tex

for file in gutenberg-books/*.txt; 
do
    $(pandoc "$file" -o "$file".tex)
done
