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
    4. git creds
        1. intall brew
            ```bash
            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
            echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/ebrown/.zprofile
            eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
            sudo apt-get install build-essential
            ```
        2. install github cli
            ```bash
            brew install gh
            ```
        3. login
            ```bash
            gh auth login
            ```

1. clone
    ```bash
    git clone https://github.com/ellisbrown/config.git ~/config
    ```

2. setup
    ```
    bash config/aliases_init.sh
    source ~/.zshrc
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


