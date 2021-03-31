script_dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
ln -s $script_dir/.gitconfig ~/.gitconfig
ln -s $script_dir/.gitignore_global ~/.gitignore_global
ln -s $script_dir/.vimrc ~/.vimrc
ln -s $script_dir/.zshrc ~/.zshrc
ln -s $script_dir/.zsh ~/.zsh
