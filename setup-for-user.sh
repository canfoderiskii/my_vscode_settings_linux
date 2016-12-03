#!/bin/bash

VSCODE_PORTABLE_PATH=$($(cd $(dirname $0)); pwd)

DOT_VSCODE=${VSCODE_PORTABLE_PATH}/.vscode
CODE=${VSCODE_PORTABLE_PATH}/Code

DOT_VSCODE_DEST=~/.vscode
CODE_DEST=~/.config/Code


if [ -L ${DOT_VSCODE_DEST} ]; then
	rm ${DOT_VSCODE_DEST}
fi

if [ -L ${CODE_DEST} ]; then
	rm ${CODE_DEST}
fi

if [ -d ${DOT_VSCODE_DEST} ] || [ -d ${CODE_DEST} ]; then
	echo "folder exists inside HOME folder, please make sure that important files are backed-up"
	echo "operation aborted.."; exit 1;
fi

ln -s ${DOT_VSCODE} ${DOT_VSCODE_DEST}
ln -s ${CODE} ${CODE_DEST}

