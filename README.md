# dotfiles

# ec2 from scratch
sudo apt update

sudo apt install python3-pip

sudo apt install python3-venv

sudo apt install fish

sudo apt install tmux

sudo apt upgrade

sudo vim /etc/cloud/cloud.cfg

Set password lock to False or w/e it is for the ec2 user

sudo passwd ubuntu

Set new password for ubuntu user

chsh -s /usr/bin/fish

sudo !!

pip3 install virtualfish

cd ~

git clone https://github.com/martinpwrs/dotfiles/

cp dotfiles/.vimrc .

cp dotfiles/.tmux_conf .

cp dotfiles/.config/fish/fish.config .config/fish/fish.config

probably reboot here

vf new main; vf deactivate; vf activate main; vf connect

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cd ~/.vim/bundle/YouCompleteMe/

sudo apt install cmake

./install


# osx - roughly

install brew

brew install python

symlink python3 to python

brew install fish

brew install awscli
 
cd ~

git clone https://github.com/martinpwrs/dotfiles/

cp dotfiles/.vimrc .

cp dotfiles/.tmux_conf .

cp dotfiles/.config/fish/fish.config .config/fish/fish.config

install xcode from the site

brew install macvin

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cd ~/.vim/bundle/YouCompleteMe/

sudo apt install cmake
