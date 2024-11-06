#!/bin/sh
export REPO="https://github.com/kevinmidboe/dotfiles"
export DOT_CONFIG_FOLDER="$HOME/.config"

# clone dotfiles repo
echo "Cloning github repo"
git clone --depth=1 $REPO $DOT_CONFIG_FOLDER

cd $DOT_CONFIG_FOLDER

# create symlinks
echo "Creating symlinks"
ln -s $HOME/.config/profile $HOME/.profile
ln -s $HOME/.config/wakatime.cfg $HOME/.wakatime.cfg

# copy script files
echo "Copying scripts to /usr/local/bin"
cp scripts/* /usr/local/bin/

# run install scripts
for script in install/*.sh; do
    echo "Running install script $script..."
    sh "$script"
done

