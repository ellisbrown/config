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
    3. (alternatively, install `oh-by-bash`)
        ```bash
        bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
        ```
    4. install [mambaforge](https://github.com/conda-forge/miniforge#mambaforge)
        ```bash
        wget "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
        bash Mambaforge-$(uname)-$(uname -m).sh
        ```
    5. git creds
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
    source ~/.bashhrc
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

symlink to configs
```bash
# tmux
ln -s ~/config/tmux.conf ~/.tmux.conf

# gdb
ln -s ~/config/gdbinit ~/.gdbinit
```
