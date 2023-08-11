clear
echo "You should now see a screen that warns you about scams. You don't need to worry about this. Just wait, and then press the 1 button. You will then see a screen that details what can be installed. If it says that BootMii can only be installed as an IOS, that's normal. Also, keep in mind that you can't install BootMii on a Wii Mini without hardware mods, as it requires an SD card.

Select Continue. Then select 'Install Homebrew Channel'. Select Continue, wait, then select back, and select 'Install BootMii as IOS'. If you can't install BootMii at this moment, but want to install it later (or uninstall something), run HackWiiAgain.sh in the HackWii folder, then the scripts folder.

Select Continue, wait, then select 'Install BootMii as boot2' if you can. If the option is not available, select Exit, and it should take you to the homebrew channel."

read -p "Press [Enter] to continue"

clear

echo "Please now insert your SD card or USB Drive so we can prepare it.

What is the directory name of your drive?"

read dirname

read -p "Press [Enter] when your device has been inserted"
cd
cd $dirname
mkdir apps
echo "Finished! You may now remove your device!"
read -p "Press [Enter] when you have removed it"
clear
echo "Your Wii is now vulnerable, and a rouge homebrew app could cause damage to your Wii. Please choose which step you'd like to take next."
PS3='What kind of exploit would you like to use?'
options=("Make a NAND backup (Protects your Wii, requires BootMii)" "Priiloader (Choose this if you couldn't install BootMii)" "Quit (I can take it from here)")
select opt in "${options[@]}"
do
    case $opt in
        "Make a NAND backup (Protects your Wii, requires BootMii)")
       ;;
	   "Priiloader (Choose this if you couldn't install BootMii)")
		;;
		"Quit (I can take it from here)")
		clear
		echo "Ok, but if you ever need continued help, run the file HackWiiAgain.sh, inside the HackWii folder, than the scripts folder."
		exit
    esac
done