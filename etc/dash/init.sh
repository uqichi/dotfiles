#!/bin/sh

SOURCE_DIR=$(cd $(dirname $0) && pwd)
TARGET_DIR=${HOME}/Library/Application\ Support/Dash

if [ ! -d "${TARGET_DIR}" ]; then
  mkdir -p ${TARGET_DIR}
fi

ln -sfnv "${SOURCE_DIR}/library.dash" "${TARGET_DIR}/library.dash"
