#!/bin/sh
name=$1
iso=$2
a=.vdi
vdi=$1$a

VBoxManage createvm --name $name --ostype Ubuntu --register
VBoxManage modifyvm $name --memory 1024  --floppy disabled --audio oss --nic1 bridged --bridgeadapter1 ale0 --vram 128  --accelerate3d off --boot1 disk --acpi on --cableconnected1 on --usb off --vrde on --vrdeport 3390
VBoxManage createhd --filename /usr/home/definitly/VirtualBox\ VMs/$name/$vdi --size 20000
VBoxManage storagectl $name --name "IDE Controller" --add ide

VBoxManage storageattach $name --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium  /usr/home/definitly/VirtualBox\ VMs/$name/$vdi
VBoxManage storageattach $name --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium /usr/home/definitly/downloads/$iso
VBoxManage modifyvm $name --boot1 dvd
VBoxManage modifyvm $name  --vrdeproperty VNCPassword=