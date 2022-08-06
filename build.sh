desktop=$(xdg-user-dir DESKTOP)
mkdir ~/wol/Guitar_Pro_8
cp ~/wol/Downloads/Guitar_Pro_8/icon.png ~/wol/Downloads/Guitar_Pro_8/startup.sh ~/wol/Guitar_Pro_8
cp ~/wol/Downloads/Guitar_Pro_8/guitarpro.desktop $desktop
echo "Downloading Guitar Pro 8..."
wget https://download-fr-3.guitar-pro.com/gp8/stable/guitar-pro-8-setup.exe
echo "Preparing Wineprefix enviroment..."
WINEARCH=win64 WINEPREFIX=~/wol/Guitar_Pro_8/ winetricks win7
WINEARCH=win64 WINEPREFIX=~/wol/Guitar_Pro_8/ winetricks corefonts
echo "Installing Guitar Pro 8..."
WINEARCH=win64 WINEPREFIX=~/wol/Guitar_Pro_8/ wine guitar-pro-8-setup.exe
echo "The installer have finished to work!"
