# update and upgrade
sudo pacman -Syu

# Get git
sudo pacman -S --needed base-devel

# check version
git --version

# download and install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# logout and log back in to update path
logout

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

# install alacritty (package 1 only)
paru alacritty

# download and install Firefox
sudo pacman -S firefox 




