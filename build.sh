mkdir ~/wol/Guitar_Pro_8
cp ~/wol/Downloads/Guitar-Pro-On-Linux/icon.png ~/wol/Downloads/Guitar-Pro-On-Linux/startup.sh ~/wol/Guitar_Pro_8
echo "Downloading Guitar Pro 8..."
wget https://download-fr-3.guitar-pro.com/gp8/stable/guitar-pro-8-setup.exe
echo "Preparing Wineprefix enviroment..."
WINEARCH=win64 WINEPREFIX=~/wol/Guitar_Pro_8/ winetricks win7
WINEARCH=win64 WINEPREFIX=~/wol/Guitar_Pro_8/ winetricks corefonts
echo "Installing Guitar Pro 8..."
WINEARCH=win64 WINEPREFIX=~/wol/Guitar_Pro_8/ wine guitar-pro-8-setup.exe
echo "The installer have finished to work!"
