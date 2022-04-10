#! /bin/sh


text="
# https://askubuntu.com/a/195357
if [ -f ~/config/aliases ]; then
    . ~/config/aliases
fi
"

echo "$text" >> ~/.zshrc
echo "$text" >> ~/.bashrc
