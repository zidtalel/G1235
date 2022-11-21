Type:Primary,Logical,Single,Span,Stripe,Mirror,RAID-5
Size:10,100,500,1000,5000,10000,40000
Formatmethod:quick,slow
Filesystem:FAT,FAT32,NTFS
Clustersize:512,1024,2048,4096,8192,16384,32768,65536
Compression:on,off
IF [Filesystem] = "FAT" THEN [Size] <= 4096;