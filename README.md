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


## github creds

0. intall brew
    ```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    ```
1. install github cli
    ```bash
    brew install gh
    ```
2. login
    ```bash
    gh auth login
    ```

