#! /bin/sh

# symlink to aliases
ln -s ~/config/aliases ~/.aliases

# symlink to tmux.conf
ln -s ~/config/tmux.conf ~/.tmux.conf


text="
# https://askubuntu.com/a/195357
if [ -f ~/config/aliases ]; then
    . ~/config/aliases
fi
"

echo "$text" >> ~/.zshrc
echo "$text" >> ~/.bashrc
