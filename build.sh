mkdir ~/wol/Guitar_Pro_8
cp ~/wol/Downloads/Guitar-Pro-On-Linux/icon.png ~/wol/Downloads/Guitar-Pro-On-Linux/startup.sh ~/wol/Guitar_Pro_8
wget https://download-fr-3.guitar-pro.com/gp8/stable/guitar-pro-8-setup.exe
WINEARCH=win64 WINEPREFIX=~/wol/guitarpro8/ winetricks win7
WINEARCH=win64 WINEPREFIX=~/wol/guitarpro8/ winetricks corefonts
WINEARCH=win64 WINEPREFIX=~/wol/guitarpro8/ wine guitar-pro-8-setup.exe
