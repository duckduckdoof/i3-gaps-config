# Python version --> get it to version 3
sudo apt install python3 python3-pip
touch .bash_aliases
echo "alias python=python3" > .bash_aliases
echo "alias pip=pip3" >> .bash_aliases

# Some stuff to install; will add to the list later
sudo apt install vim lxappearance x11-utils tree rofi compton git scrot feh ranger dunst mpd mpc neofetch

# i3-gaps dependencies
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool

# Need to install the libxcb-xrm-dev library
mkdir tmp
cd tmp
git clone https://github.com/Airblader/xcb-util-xrm
cd xcb-util-xrm
git submodule update --init
./autogen.sh --prefix==/usr
make
sudo make install

# Install from source
cd tmp
git clone https://github.com/Airblader/i3 i3-gaps
cd i3-gaps
git checkout gaps && git pull
autoreconf --force --install
rm -rf build
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc
make
sudo make install


## NOTE: FONTS
# Make sure to install more fonts via "Nerd fonts", then extract the ttfs
# to the .fonts directory on your machine

# Install fonts (make sure to make the .fonts directory first)
mkdir ~/.fonts
git clone https://github.com/stark/siji && cd siji
./install.sh -d ~/.fonts

sudo apt install fonts-font-awesome
fc-cache -f -v

# Install polybar (dependencies)
sudo apt-get install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev libxcb-composite0-dev xcb libxcb-ewmh2

# Get polybar & install
git clone https://github.com/jaagr/polybar.git
cd polybar && ./build.sh

# Install pywal
pip install pywal

# Install spotify
sudo snap install spotify

# Install themes
sudo apt install numix-icon-theme
