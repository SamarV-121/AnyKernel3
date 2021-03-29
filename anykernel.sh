# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=FuseKernel by SamarV-121
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=RMX2001
device.name2=
supported.versions=
supported.patchlevels=
'; } # end properties

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## AnyKernel install
dump_boot;

write_boot;

cp -rvf $home/patch/system /
chcon -R u:object_r:vendor_file:s0 /system/product/vendor_overlay/29/lib*
chcon u:object_r:same_process_hal_file:s0 /system/product/vendor_overlay/29/lib*/libdpframework.so

## end install
