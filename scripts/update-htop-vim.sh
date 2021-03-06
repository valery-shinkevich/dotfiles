#!/bin/bash
set -euo pipefail

command -v "htop" >/dev/null 2>&1 && {
	VERSION=$(htop --version | head -1)
	echo "htop version ($VERSION) is already installed."
	exit 0
}

LINUX=$(lsb_release -i -s)

if [ "$LINUX" = "LinuxMint" ]; then

	COMMIT=70c91d6d598f15b0311ae6779810e036133e72d2
	TARBALL=https://github.com/KoffeinFlummi/htop-vim/tarball/$COMMIT
	TMP_DIR=/tmp/htop-vim-installation-$COMMIT

	mkdir -p $TMP_DIR
	cd $TMP_DIR

	# Download tarball
	curl -L $TARBALL | tar xz

	# make binary
	cd $TMP_DIR/KoffeinFlummi-htop-vim-*

	./autogen.sh
	./configure
	make

	echo "Please enter password for 'make install' (htop needs to be available for root user)"
	sudo make install

elif [ "$LINUX" = "ManjaroLinux" ]; then

	! command -v "yay" >/dev/null 2>&1 && {
		echo "yay missing"
		exit 1
	}
	yay -Sy htop-vim-git

else
	echo "Unexpected distribution: $LINUX"
	exit 1
fi
