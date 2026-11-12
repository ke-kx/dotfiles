# dotfiles

Keeping track of personal settings for zsh, bash and probably vim.

# Installation

See stuff in `install.sh`.
Some of it might have to be adapted manually to current system state.


## Symlinks
Link all dotfiles from the repository to their correct location (usually in ~)

## Powerline fonts
https://github.com/powerline/fonts

## ZSH
Install oh-my-zsh:`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

Also install zsh-autosuggestions by executing `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions` and the spaceship-zsh-theme with `git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"` and `ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"`

## Fish
Garuda's fish defaults live in `/usr/share/garuda/garuda-fish-config/config.fish` (updated by the package); `fish/config.fish` sources them and only adds personal settings (vi mode, EDITOR, zoxide, ls after cd).
Plugins via fisher (`sudo pacman -S fisher`): listed in `fish/fish_plugins`, installed with `fisher update`. `jhillyerd/plugin-git` = the oh-my-zsh git aliases as abbreviations.
`~/.config/fish/fish_variables` is machine state and stays out of the repo.

## VIM
Install vim-plug (https://github.com/junegunn/vim-plug)
For installing the plugins execute :PlugInstall, for updating :PlugUpdate
You will need to additionally install the powerline-fonts package to fix the font problems

Remember do download the monokai colorscheme and place it in `~/.vim/colors/` (see https://github.com/sickill/vim-monokai).
