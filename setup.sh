script_dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
ln -s $script_dir/.gitconfig ~/.gitconfig
ln -s $script_dir/.vimrc ~/.vimrc
ln -s $script_dir/.zshrc ~/.zshrc
