dotfiles_dir=~/repos/dotfiles

echo "Linking dotfiles"
ln -s $dotfiles_dir/vimrc ~/.vimrc
ln -s $dotfiles_dir/bashrc ~/.bashrc
ln -s $dotfiles_dir/ideavimrc ~/.ideavimrc
ln -s $dotfiles_dir/zshrc ~/.zshrc
ln -s $dotfiles_dir/vim ~/.vim

echo "Installing oh-my-zsh"
sudo pacman -S zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# spaceship theme (https://github.com/denysdovhan/spaceship-prompt)
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

echo "Installing vim stuff"
sudo pacman -S powerline-fonts
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
