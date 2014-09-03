---
layout: post
title: mac ntfs filesystem write
---

brew install ntfs-3g

brew remove fuse4x

sudo mv /sbin/mount_ntfs /sbin/mount_ntfs.orig

sudo ln -s /usr/local/Cellar/ntfs-3g/2014.2.15/sbin/mount_ntfs /sbin/mount_ntfs

brew install osxfuse

brew info osxfuse

sudo /bin/cp -RfX /usr/local/Cellar/osxfuse/2.6.4/Library/Filesystems/osxfusefs.fs /Library/Filesystems

sudo chmod +s /Library/Filesystems/osxfusefs.fs/Support/load_osxfusefs


reference:
http://coolestguidesontheplanet.com/how-to-write-to-a-ntfs-drive-from-os-x-mavericks/
http://tank.blog.tkiicpp.com/2014/04/14/mac-os-x-添加写入ntfs格式硬盘功能/

