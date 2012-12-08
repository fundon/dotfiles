#!/bin/bash

FC_DIR=$HOME/Document/fullcircle
FC_LIST=45
#limitRate
FC_LR='230k'

if [ ! -d $FC_DIR ]; then
  mkdir -P $FC_DIR/{en,zh-CN}
fi

for i in $(seq 0 $FC_LIST); do
  tmp_en=$FC_DIR/en/fc_${i}_en.pdf
  tmp_zh=$FC_DIR/zh-CN/fc_${i}_zh-CN.pdf
  if [ ! -f $tmp_en ]; then
    echo "Downloading $tmp_en..."
    tmp1="http://dl.fullcirclemagazine.org/issue${i}_en.pdf"
    tmp2="http://test.fullcirclemagazine.org/wp-content/uploads/2009/08/fullcircle-issue${i}-eng1.pdf"
    wget --spider $tmp1 && wget -c --limit-rate=${FC_LR} -O $tmp_en $tmp1
    wget --spider $tmp2 && wget -c --limit-rate=${FC_LR} -O $tmp_en $tmp2
  fi
  if [ ! -f $tmp_zh ]; then
    echo "Downloading $tmp_zh..."
    tmp0="http://dl.fullcirclemagazine.org/issue${i}_zh-CN.pdf"
    tmp1="http://fullcirclectt.googlecode.com/files/issue${i}_cn.pdf"
    tmp2="http://fullcirclectt.googlecode.com/files/issue0${i}_zh-CN.pdf"
    tmp3="http://fullcirclectt.googlecode.com/files/issue${i}_zh-CN.pdf"
    tmp4="http://fullcirclectt.googlecode.com/files/issue${i}%20cn-CN.pdf"
    tmp5="http://fullcirclectt.googlecode.com/files/issue${i}%20zh-CN.pdf"
    tmp6="http://fullcirclectt.googlecode.com/files/Issue${i}%20zh-CN.pdf"
    tmp7="http://fullcirclectt.googlecode.com/files/issue${i}-zh-CN.pdf"
    tmp8="http://fullcirclectt.googlecode.com/files/issue${i}%20zh-CN.PDF"

    #wget --spider broken
    wget -c --limit-rate=${FC_LR} -O $tmp_zh $tmp0
    wget -c --limit-rate=${FC_LR} -O $tmp_zh $tmp1
    wget -c --limit-rate=${FC_LR} -O $tmp_zh $tmp2
    wget -c --limit-rate=${FC_LR} -O $tmp_zh $tmp3
    wget -c --limit-rate=${FC_LR} -O $tmp_zh $tmp4
    wget -c --limit-rate=${FC_LR} -O $tmp_zh $tmp5
    wget -c --limit-rate=${FC_LR} -O $tmp_zh $tmp6
    wget -c --limit-rate=${FC_LR} -O $tmp_zh $tmp7
    wget -c --limit-rate=${FC_LR} -O $tmp_zh $tmp8
  fi
done
