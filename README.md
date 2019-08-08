# dotfiles
Keeping track of personal settings for zsh, bash and probably vim.

## Symlinks
Link all dotfiles from the repository to their correct location (usually in ~)

## Powerline fonts
https://github.com/powerline/fonts

## ZSH
Install oh-my-zsh:`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

Also install zsh-autosuggestions by executing `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions` and the spaceship-zsh-theme with `git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"` and `ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"`

## VIM
Install vim-plug (https://github.com/junegunn/vim-plug)
For installing the plugins execute :PlugInstall, for updating :PlugUpdate
You will need to additionally install the powerline-fonts package to fix the font problems
