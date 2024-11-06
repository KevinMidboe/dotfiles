#!/bin/bash

export REPO="git@github.com:KevinMidboe/dotfiles"
export DOT_CONFIG_FOLDER="$HOME/.config"

# clone dotfiles repo
echo "Cloning github repo"
git clone --depth=1 -b main $REPO $DOT_CONFIG_FOLDER

cd $DOT_CONFIG_FOLDER
git pull origin main

# create symlinks
echo "Creating symlinks"
ln -s $HOME/.config/profile $HOME/.profile
ln -s $HOME/.config/wakatime.cfg $HOME/.wakatime.cfg

# copy script files
echo "Copying scripts to /usr/local/bin"
cd scripts
if [ $EUID != 0 ]; then
    for script in ./*; do
        echo "  copying $script"
        sudo cp $script /usr/local/bin/
    done

    sudo chmod 755 -R /usr/local/bin/
fi
cd ..

# run install scripts
for script in install/*.sh; do
    echo ""
    echo "Running install script $script..."
    bash "$script"
done

