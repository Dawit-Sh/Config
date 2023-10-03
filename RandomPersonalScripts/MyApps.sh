#!/bin/bash

######################################################################
# @author      : nk (nk@localhost.localdomain)
# @file        : MyApps
# @created     : Tuesday Oct 03, 2023 15:52:09 EDT
#
# @description : script to grab basic flatpak and suse packages 
######################################################################


# flatpak 
flatpak install com.logseq.Logseq com.github.z.Cumulonimbus org.gnome.World.PikaBackup org.telegram.desktop io.github.troyeguo.koodo-reader org.nickvision.tubeconverter 

sleep 0.5

# Suse Stuff
sudo zypper install systemd-zram-service && sudo zramswapon
sleep 0.5

