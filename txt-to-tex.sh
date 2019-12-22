#!/bin/bash

# convert all .txt files of project gutenberg books to .tex via pandoc

## create gutenberg-books/tex directory if it does not exist
mkdir --parent gutenberg-books/tex

## convert all project gutenberg books in the gutenberg-books/txt
## directory from .txt to .tex via pandoc, and move the .tex files to
## gutenberg-books/tex
for file in gutenberg-books/txt/*.txt; 
do
    $(pandoc "$file" --output "$file".tex)
    mv "$file".tex gutenberg-books/tex
done
