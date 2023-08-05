mkdir HackWii
cd HackWii
clear
echo "Hello there, fellow homebrewer! Whether or not you've homebrewed a Wii in the past, this quick install process allows you to very quickly homebrew your Wii!

This is version 1.0 of this guide.

Please note that this process does not work on the Wii U vWii."

read -p "Press [Enter] to continue"

echo "What kind of exploit would you like to use?"

clear
	
echo "Press S to use str2hax (requires an internet connection"
echo "Press L to use LetterBomb (requires an SD card)"
echo "Press W to use Wilbrand (requires an SD card)"
echo "Press F to use FlashHax (requires the internet channel)"
echo "Press B to use Bluebomb (requires Bluetooth on this computer)"
if [[ ${#char} != 1 && "$char" != *[S]* ]]; then
   clear
   RED='\033[0;31m'
   NC='\033[0m'
   echo -e "Click on the Wii Options button in the bottom left corner of the Wii Menu, and click Wii Settings.
   
   Go to the second page, and then click on Internet.
   
   Click on Connection Settings, then click on the connection you are currently using for your Wii.
   
   Click on Change Settings, then scroll left or right until you reach the page titled Auto-Obtain DNS, and click on No, then click on Advanced Settings.
   
   Make sure there are only 2 text boxes (if there are more, click cancel and find 'Auto-Obtain DNS'). Click on the Primary DNS text box, and enter
${RED}18.188.135.9${NC}.

   Click on confirm, click on save, then click on OK and wait for it to test the connection. If it worked, click no. If it didn't work, check your DNS. If it is correct, try again, and if it still fails, stop this script and try another exploit."
   
   read -p "Press [Enter] to continue"
   
   clear
   echo "Click back twice, then click User Agreements. Click Yes, wait for the menu to load, then click next. You should see an image like the one here: https://wii.guide/images/str2hax/EULA.png (if you don't see it, or see the regular user agreement, stop the script and choose another exploit). Don't click anything, just wait. When it loads, if you recieve an error, simply restart your Wii and try again."
   
   
   	if [[ ${#char} != 1 && "$char" != *[L]* ]]; then
   		//LetterBomb
	else
   		if [[ ${#char} != 1 && "$char" != *[W]* ]]; then
   			//Wilbrand
		else
   			if [[ ${#char} != 1 && "$char" != *[F]* ]]; then
   				//FlashHax
			else
				if [[ ${#char} != 1 && "$char" != *[B]* ]]; then
    				//BlueBomb
				else
   				 	exit
				fi
			fi
		fi
	fi			
fi