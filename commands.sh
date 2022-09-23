# update and upgrade
sudo pacman -Syu

# Get git
sudo pacman -S --needed base-devel

# check version
git --version

# download and install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# logout and log back in to update path
exit

# test rust install
cargo --version
rustc --version
rustup --version

mkdir -p ~/projects/rust

# install paru
cd ~/projects/rust
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
paru --version
cd ~

# install polybar
paru -S polybar

# install dmenu
paru -S dmenue

# install leftwm
paru -S leftwm

# install leftwm theme (alacritty was installed when I installed the OS)
cd ~/projects/rust
git clone https://github.com/leftwm/leftwm-theme
cd leftwm-theme
carbo build --release
sudo install -s -Dm755 ./target/release/leftwm-theme -t /usr/bin
leftwm-theme update

# install a theme
# leftwm-theme install "Orange Forest"
# leftwm-theme apply "Orange Forest"

# get basic_polybar out of the repo
git clone https://github.com/leftwm/leftwm.git
cd ~/.config/leftwm/themes
ln -s ~/.projects/rust/leftwm/themes.basic_polybar current

# restart WM mod+shift+r

# install more pipewire stuff
sudo pacman -S pipewire
sudo pacman -S pipewire-pulse
sudo pacman -S pavucontrol

# copy config files into the home directory
cd ~/projects
git clone https://github.com/robbmj/dotfiles.git
cd ~
# todo loop over files
ln -s ~/projects/dotfiles/.bashrc .bashrc
ln -s ~/projects/dotfiles/.vimrc .vimrc
ln -s ~/projects/dotfiles/.xinitrc .xinitrc
ln -s ~/projects/dotfiles/.xsession .xsession
