sudo apt-get update

sudo apt-get install vim

# Git config
sudo apt-get install git
echo "Type in default git username, followed by [ENTER]:"
read GIT_USER

echo "Type in default git email, followed by [ENTER]:"
read GIT_EMAIL

git config --global user.name $GIT_USER
git config --global user.email $GIT_EMAIL
git config --global core.editor vim

# Install sublime 3
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

# Install terminator
sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get install terminator

# Get dotfiles
cd ~
git clone https://github.com/connorqmoore/dotfiles.git
cd dotfiles
mv .vimperatorrc ..
mv .vimrc ..
cd ..
rm -rf dotfiles

# Setup Vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

git clone https://github.com/ghuntley/terminator-solarized.git
cd terminator-solarized
mkdir -p ~/.config/terminator/
touch ~/.config/terminator/config
# if you want to replace current config:
cp config ~/.config/terminator
# if you want to append current config:
cat config >> ~/.config/terminator/config

cd ..
rm -rf terminator-solarized

# Setup workspaces -> type in workspaces and change that to 4,
#             next right click on the section where you want to add 
#             the workspaces and add them in

# Add vimperator

# Setup Ruby
apt-get install curl
command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
\curl -sSL https://get.rvm.io | bash -s stable
rvm install 2.2.0
apt-get install nodejs
rvm use 2.2.0
gem install rails -v=4.0.13

