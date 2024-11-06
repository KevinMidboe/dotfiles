#!/bin/bash

export REPO="git@github.com:KevinMidboe/dotfiles"
export DOT_CONFIG_FOLDER="$HOME/.config"

# clone dotfiles repo
printf "\n▽  Fetching files.."
git clone --depth=1 -b main $REPO $DOT_CONFIG_FOLDER

cd $DOT_CONFIG_FOLDER
git pull origin main

# create symlinks
printf "\n▽  Creating symlinks\n"
echo "   ▫ .profile"
ln -s $HOME/.config/profile $HOME/.profile
echo "   ▫ .wakatime.cfg"
ln -s $HOME/.config/wakatime.cfg $HOME/.wakatime.cfg

# copy script files
printf "\n▽  Copying scripts to /usr/local/bin\n"
cd scripts
if [ $EUID != 0 ]; then
    for script in ./*; do
        echo "   ▫ copying $script"
        sudo cp $script /usr/local/bin/
    done

    sudo chmod 755 -R /usr/local/bin/
fi
cd ..

# run install scripts
printf "\n▽  Running install scripts\n"
for script in install/*.sh; do
    printf "   ▫ %s\n" $script
    bash "$script"
done

