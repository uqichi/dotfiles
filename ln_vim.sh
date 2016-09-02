#!/bin/sh

SRC_DIR=$(cd $(dirname $0) && pwd)/vim
TGT_DIR=${HOME}/.vim/_template
FILES=`ls ${SRC_DIR} | xargs`

if [ ! -d ${TGT_DIR} ]; then
    mkdir -p ${TGT_DIR}
fi

for file in ${FILES}
do
  ln -s ${SRC_DIR}/${file} ${TGT_DIR}/${file}
done
