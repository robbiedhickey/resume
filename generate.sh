#!/bin/bash
declare -a themes=("elegant" "paper" "flat" "modern" "slick" "kwan" "onepage")

if [ ! -d html ]; then
  mkdir html
fi

if [ ! -d pdf ]; then
  mkdir pdf
fi

for i in "${themes[@]}"
do
  resume export html/$i.html --theme $i --format html
  resume export pdf/$i.pdf --theme $i --format pdf
done
