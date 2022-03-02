# .config

## setup
1. clone
    ```bash
    git clone git@github.com:ellisbrown/config.git ~
    ```


## .bashrc / .zshrc

### aliases
```bash

# https://askubuntu.com/a/195357
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

```

symlink to aliases
```bash
ln -s ~/config/aliases ~/.aliases
```
