# Michal's dotfiles

## Install fonts

### AnonynousPro

https://github.com/ryanoasis/nerd-fonts/releases

```bash
mkdir -p AnonynousPro && tar -xf AnonymousPro.tar.xz -C ./AnonynousPro
```

```bash
sudo cp ./AnonynousPro/*.ttf /usr/share/fonts/
```

```bash
sudo fc-cache -fv
```

### JetBrainsMono

https://www.jetbrains.com/lp/mono/

```bash
mkdir -p JetBrainsMono && unzip JetBrainsMono-2.304.zip -d ./JetBrainsMono
```

```bash
sudo cp  JetBrainsMono/fonts/ttf/*.ttf /usr/share/fonts/
```

```bash
sudo fc-cache -fv
```

### list the fonts

```bash
fc-list :family
```

## yazi

```bash
bash config_yazi.sh
```

## starship

```bash
bash config_starship.sh
```

### NU

```bash
mkdir ~/.cache/starship
starship init nu | save -f ~/.cache/starship/init.nu
starship init fish | source

```bash
And add the following to the end of your Nushell configuration (find it by running $nu.config-path):

```bash
use ~/.cache/starship/init.nu
```

### FISH

Add the following to the end of ~/.config/fish/config.fish:

```fish
starship init fish | source
```

Example of adding path (NU)

```nu
use std "path add"
path add '~/.nvm/versions/node/v20.18.0/bin'
path add '/opt/nvim-linux64/bin'
path add '~/julia-1.11.1/bin'
```

### BASH

Add the following to the end of ~/.bashrc:

```bash
eval "$(starship init bash)"
```

## CODE

```bash
code --extensions-dir <dir>
    Set the root path for extensions.
code --list-extensions >file.txt
    List the installed extensions.
code --show-versions
    Show versions of installed extensions, when using --list-extension.
code --install-extension (<extension-id> | <extension-vsix-path>)
    Installs an extension.
cat file.txt | xargs -L 1 echo code --install-extension
    Installs an extensions from file.
code --uninstall-extension (<extension-id> | <extension-vsix-path>)
    Uninstalls an extension.
code --enable-proposed-api (<extension-id>)
    Enables proposed API features for extensions. Can receive one or more extension IDs to enable individually.

```
