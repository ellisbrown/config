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

1. install github cli
    ```bash
    conda config --add channels conda-forge
    conda config --set channel_priority strict
    conda install gh
    ```
2. login
    ```bash
    gh auth login	
    ```

