# .config

## setup
0. basic machine setup
    1. install `zsh`
        ```bash
        sudo apt install zsh
        ```
    2. install `ohmyzsh` 
        ```bash
        sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
        ```
        - change theme to `agnoster`
    3. install miniconda
        ```bash
        mkdir -p ~/miniconda3
        wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
        bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
        rm -rf ~/miniconda3/miniconda.sh
        ~/miniconda3/bin/conda init bash
        ~/miniconda3/bin/conda init zsh
        ```

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

