#! /bin/sh

# By abrabant

LTS_LINUX_BINARIES="https://nodejs.org/dist/v14.17.5/node-v14.17.5-linux-x64.tar.xz"

echo "$PATH" | grep -i "$HOME/.local/opt/nodejs-42/bin" 1> /dev/null
if [ $? -ne 0 ]; then
	printf '\033[1;31mIMPORTANT: \033[0mPath \033[0;34m$HOME/.local/opt/nodejs-42/bin \033[0m is _NOT_ pointed by the PATH variable.

The command below will help you getting this done:
\033[1;38mexport PATH="$PATH:$HOME/.local/opt/nodejs-42/bin\033[0m"
'
fi 


mkdir -p $HOME/.local/opt
cd $HOME/.local/opt

if [ -d nodejs-42 ]; then
	printf "\n"
	read -p "/!\ nodejs-42 installation found. Reinstall? (y/n):" answer;
	[ "$answer" != "y" ] && exit 0;
fi

rm -rf nodejs-42/

printf "Downloading nodejs...\n"

wget "$LTS_LINUX_BINARIES" -O nodejs.tar.xz 2> /dev/null

printf "Unpacking nodejs...\n"

tar -xf nodejs.tar.xz > /dev/null 2> /dev/null && rm -rf nodejs.tar.xz

mv ./node*linux-x64 nodejs-42

printf "Installation done.\n"
