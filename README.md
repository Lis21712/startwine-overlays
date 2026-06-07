sw_image1
StartWine is a launcher that allows you to quickly and easily launch Windows applications on Linux operating systems

StartWine Guide
English - Русский

Review
Setup
GUI
Creating shortcuts and running games
What is used in StartWine?
Thank you!
Useful links
License
Setup
To start using the program, download StartWine itself from the GitHub page under sw_releases or from the discord server

GitHub > Click

AUR > I use Arch :p

Discord > Click

Make the file executable and launch it with a double click

GUI
Video demonstration of StartWine interface

 sw_video0_en.mp4 
If you need quick access to folders or to add your own folder to a bookmark, click on the corresponding icon as shown in the video demonstration.

 sw_video2_en.mp4 
StartWine Screenshots (Doubtful, but okeey)

sw_image1 sw_image2 sw_image3 sw_image4 sw_image5 sw_image6 sw_image7 sw_image8 sw_image9 sw_image10

Creating shortcuts and running games
If you click "NO" in the choice to create a prefix for .exe and other windup formats, the default prefix for the shortcut will be used by default.

Otherwise, just hit the start button and the game will launch

 sw_video1_en.mp4 
Note that StartWine has a StartWine-Run.desktop that is used by default in file managers such as dolphin, Nautilus etc. to run a .exe file without the StartWine interface in addition to the usual interface shortcut

Tip!

In some cases, it may turn out that the installation is going, but the percentages are not going, and the culprit is in my or maybe you have it NTFS the partition of the disk from which you started the installer. The fact is that if you have a so-called dualbut or multi-boot, call it as you like, then if you have not booted from Windows, then Windows will safely take away your rights to any actions on files. What should I do in this case?
Option 1: Just reboot into Windows, you don't have to be logged in, then reboot into your Linux distribution. Or after booting into Windows, disable hibernation mode. How to do this? look on the internet.
Option 2: In the folder where you have the files with the game installer, copy it and transfer it to the Linux partition, preferably in the /home/$USER/ (where $USER should be your username) section.
What is used in StartWine?
StartWine was written from scratch, but using already ready-made components without which the program itself did not appear

List

GTK 4
Wine
Wine-Staging
Wine GE
Proton GE
Steam Proton
Lutris
Lutris GE
DXVK
DXVK GE
VK3D
VK3D GE
MangoHud (Thanks VHSgunzo for the patch to work on Nvidia graphics cards!)
vkBasalt
gamemode
Mesa
Runimage
Runimage nvidia drivers
AMD FSR
dgVoodoo2
DLSS
Thank you!
Developers

Rustan Normatov
Nikita Maslov
Created and helped write code

Rustan Normatov
Nikita Maslov
Maxim Tarasov
Participants in the project

StartWine Community
Андрей
3y6HuK
Alexandrdrdr
Huskysoul
kazbek
Kot41ru
Fanchji (Vitaly)
Survolog
Lex
Lintech
LinuxShef
Sheridan
Wik
Project design

StartWine Design Socialist Party

Thank you to everyone who participated in the testing and development of StartWine, as well as in supporting it with their enthusiasm and great patience. ❤️

Useful links
The author of the manual > Lintech

Website > Click

Telegram > Click

Discord server > Discord

License
License: GPL v3

Copyright (C) Maslov N.G. Normatov R.R.

This file is part of StartWine-Launcher.

StartWine-Launcher is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

StartWine-Launcher is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with StartWine-Launcher. If not, see http://www.gnu.org/licenses/.
