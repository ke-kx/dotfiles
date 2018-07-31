# dotfiles
Keeping track of personal settings for zsh, bash and probably vim.

## ZSH
Install oh-my-zsh:`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

Also install zsh-autosuggestions by executing `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions` and the spaceship-zsh-theme with `curl -o - https://raw.githubusercontent.com/denysdovhan/spaceship-zsh-theme/master/install.zsh | zsh`

## VIM
Install vim-plug (https://github.com/junegunn/vim-plug)
For installing the plugins execute :PlugInstall, for updating :PlugUpdate
You will need to additionally install the powerline-fonts package to fix the font problems
