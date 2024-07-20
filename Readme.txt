NOTICE: The deive filtering appear to not work in the recovery env...

Just a script I wrote to help in an effort to speed up this process.
Nothing special and im not the best so please feel free to let me know how this can be inproved.

There are a few things to do to get setup:
1. Set the OS drive name variable in the script, if youre in a mass deployment they should be all the same.
If not idk how to account for that.
2. Set the USB drive name variable in the script.
3. Create a "Bitlockers.txt" file in the root of the usb drive to save your fingers.
This is just so you can copy the key to the file and not have to type it in everytime.
4. Making the usb a bootable a preboot env that has cmd prompt access is the best way to get around
having to go thought the recovery partition.


Process:
1. copy the bitlocker to the text file
2. boot to the usb drive/recovery env and access the cmd prompt
3. find the drive letter of the usb (usually D:, E:, F:)
4. run the .bat file from the usb
5. notepad with the bit key should open and you can copy the key including the dashes or not
6. paste the key into the cmd prompt (should ask you to "Enter Bitlocker Key"
7. press enter and watch the glory... haha
8. verify the files didnt show up
9. press enter again and select continue to windows
