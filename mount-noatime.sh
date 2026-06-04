# for applying to boot disk at start up:
# https://sysadmin.flakshack.com/post/9253439680/ssd-tweaks-for-mac-os-x
# https://dpron.com/os-x-noatime-multiple-ssds/

ps aux | grep fsck
sudo pkill -f fsck
sudo mount -vuwo noatime /dev/disk2s1

# see block size, etc.
diskutil info disk5s2

# identify process holding a drive open
sudo lsof /Volumes/myDrive
