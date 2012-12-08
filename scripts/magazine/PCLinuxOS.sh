#!/bin/bash
# vim: set fdm=marker ts=4 sw=4 sts=4 ft=sh fenc=utf-8 ff=unix

#Author: cfddream
#Email: cfddream[at]gmail.com
#Blog: www.kissdry.com
#Description: Download PCLinuxOS Magazine PDF http://pclosmag.com/


years=("2010" "2011")
years_items=${years[*]}
years_indexs=${!years[*]}
years_length=${#years[*]}

url="http://pclosmag.com/pdf/%s"

months=$(seq 1 12)

DOC_DIR=~/Document/PCLinuxOS

if [ ! -d $DOC_DIR ]; then
  mkdir $DOC_DIR
fi

for i in $years_indexs; do
  echo "Downloading..., ${years[$i]} PCLinuxOS Magazine PDF."
  for j in $months; do
    filename=`printf "%d-%02d.pdf" ${years[${i}]} ${j}`
    file=$DOC_DIR/$filename
    if [ -f $file ]; then
      continue
    fi
    tmp_url=`printf ${url} $filename`
    wget --spider $tmp_url && wget -O $file -c $tmp_url
  done
done
