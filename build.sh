#!/bin/bash
cd
cd patchrom
. build/envsetup.sh
cd Z00YD
clear
echo ""
echo ""
echo "                   88.       .88 8888 888      88 8888  .8888.          "
echo "                   8888.   .8'88  88  888      88  88   8    8          "
echo "                   888'8. .8' 88  88  888      88  88   '8888'          "
echo "                   888 '8.8'  88  88  888      88  88  88    88         "
echo "                   888  '8'   88  88  888      88  88  88    88         "
echo "                   888        88 8888 88888888888 8888  '8888'          "
echo ""
echo ""
echo "                             Developed by BrainKub "
echo "                            Press ENTER to continue"
echo "                       "

read

main()
{
clear;
echo "What can I do for you?"
echo "  "
echo "1) Build Miui"
echo "2) Make fullota"
echo "3) Clean out directory"
echo "4) Make firstpatch"
echo "5) Make secondpatch"
echo "6) Write device boot log  "
echo "7) Write full log "
echo "8) Exit  "
echo "  "
printf 'Enter the numper and press Enter: '
read renv

case $renv in 
	1)
        clear
		echo "Building miui..."
        echo "Cleaning out direcory..."
		make clean
		rm -rf /home/brainkub/patchrom/Z00YD/miui-8_Z00YD.zip
        echo "start building miui..."
		make fullota
		echo ""
		cp /home/brainkub/patchrom/Z00YD/out/fullota.zip /home/brainkub/patchrom/Z00YD/miui-8_Z00YD.zip
		echo "Done! "
		echo "Press ENTER to continue"
		read
	;;
	2)
        clear
		echo "Making full ota package..."
		make fullota
		echo "Done! "
		echo "Press ENTER to continue"
		read
	;;
	3)
        clear
		echo "Cleaning out directory..."
		make clean
		rm -rf /home/brainkub/patchrom/Z00YD/miui-8_Z00YD.zip
		echo "Press ENTER to continue"
		read
	;;
	4)
		echo "Making first patch..."
		make firstpatch
		echo "Done! "
		echo "Press ENTER to continue"
		read
	;;
	5)
        clear
		echo "Making second patch..."
		make secondpatch
		echo "Done! "
		echo "Press ENTER to continue"
		read
	;;
    6)
        clear
        echo "Rebooting adb server..."
        adb kill-server
        adb start-server
        echo "Writing logcat..."
        adb logcat *:E -> bootlog.txt
        echo "Done! Find log in "bootlog.txt""
		echo "Press ENTER to continue"
		read
	;;
	7)
		clear
		echo "Rebooting adb server..."
		adb kill-server
		adb start-server
		echo "Writing full log..."
		adb logcat -> full_log.txt
		echo "Done! Find log in "full_log.txt""
		echo "Press ENTER to continue"
		read
	;;
    8)
        clear;
        exit;
    ;;
esac
}
while :
do
	main;
done
