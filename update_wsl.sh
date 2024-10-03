#!/bin/zsh

git fetch upstream
git merge upstream/master
git push -u origin master

make wsl_defconfig
make -j64
sudo make modules_install

sudo rm -rf /mnt/c/Users/Thoma/Documents/wsl-kernel/vmlinux
sudo cp -v arch/x86/boot/bzImage /mnt/c/Users/Thoma/Documents/wsl-kernel/vmlinux


