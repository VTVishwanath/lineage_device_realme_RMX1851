#!/bin/bash

banner(){
clear
echo "================================"
echo "|                              |"
echo "|   Realme 3 Pro Setup Script  |"
echo "|       Branch: Lineage        |"
echo "|    Maintained By: Vish       |"
echo "|                              |"
echo "================================"
}

banner 2>1

# Kernel
banner 2>1
echo "Cloning Kernel..."
current_dir=$(pwd)
if [ -z "$(ls -A $current_dir/kernel/realme/sdm710)" ]; then
    git clone https://github.com/kdrag0n/proton-clang prebuilts/clang/host/linux-x86/proton-clang
    git clone https://github.com/Cykeek/kernel_realme_sdm710 -b A13 kernel/realme/sdm710
else
    echo "Directory is not empty"
fi

# RealmeParts
echo "Cloning RealmeParts..."
if [ -z "$(ls -A $current_dir/packages/apps/RealmeParts)" ]; then
    git clone https://github.com/Cykeek-Labs/packages_apps_realmeparts -b A13 packages/apps/RealmeParts
else
    echo "Directory is not empty"
fi

# Vendor
echo "Cloning Vendor..."
if [ -z "$(ls -A $current_dir/vendor/realme/RMX1851)" ]; then
    git clone https://github.com/ArrowOS-Devices/android_vendor_realme_RMX1851 -b arrow-13.1 vendor/realme/RMX1851
else
    echo "Directory is not empty"
fi


