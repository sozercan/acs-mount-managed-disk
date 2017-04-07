This script automatically partitions, formats, mounts and adds to `/etc/fstab` any attached managed disks to `/mnt/data1/`, `/mnt/data2` etc.

Usage:
* Copy ssh key into master node
* SSH into master node
* Run `./setup.sh` from this repo

Here is a sample usage:
```
sozercan@k8s-master-34509323-0:~$ kubectl get nodes
NAME                    STATUS                     AGE
k8s-agent-34509323-0    Ready                      5m
k8s-agent-34509323-1    Ready                      5m
k8s-agent-34509323-2    Ready                      5m
k8s-agent-34509323-3    Ready                      5m
k8s-master-34509323-0   Ready,SchedulingDisabled   5m
```

```
sozercan@k8s-master-34509323-0:~$ ./setup.sh 
Working on k8s-agent-34509323-0...
Disks are /dev/sdc /dev/sdd
Working on /dev/sdc
/dev/sdc is not partitioned, partitioning
Creating filesystem on /dev/sdc1.
mke2fs 1.42.13 (17-May-2015)
Discarding device blocks: done                            
Creating filesystem with 33554176 4k blocks and 8388608 inodes
Filesystem UUID: 945ef7be-3e5e-4085-879a-826b903de2ff
Superblock backups stored on blocks: 
	32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632, 2654208, 
	4096000, 7962624, 11239424, 20480000, 23887872

Allocating group tables: done                            
Writing inode tables: done                            
Creating journal (32768 blocks): done
Writing superblocks and filesystem accounting information: done     

Next mount point appears to be /mnt/data1
Mounting disk /dev/sdc1 on /mnt/data1
Working on /dev/sdd
/dev/sdd is not partitioned, partitioning
Creating filesystem on /dev/sdd1.
mke2fs 1.42.13 (17-May-2015)
Discarding device blocks: done                            
Creating filesystem with 33554176 4k blocks and 8388608 inodes
Filesystem UUID: 86158a0d-8c3e-431c-ac0f-1bcccbe8f7ea
Superblock backups stored on blocks: 
	32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632, 2654208, 
	4096000, 7962624, 11239424, 20480000, 23887872

Allocating group tables: done                            
Writing inode tables: done                            
Creating journal (32768 blocks): done
Writing superblocks and filesystem accounting information: done     

Next mount point appears to be /mnt/data2
Mounting disk /dev/sdd1 on /mnt/data2
Connection to k8s-agent-34509323-0 closed.
Warning: Permanently added 'k8s-agent-34509323-1,10.240.0.4' (ECDSA) to the list of known hosts.
Working on k8s-agent-34509323-1...
Disks are /dev/sdc /dev/sdd
Working on /dev/sdc
/dev/sdc is not partitioned, partitioning
Creating filesystem on /dev/sdc1.
mke2fs 1.42.13 (17-May-2015)
Discarding device blocks: done                            
Creating filesystem with 33554176 4k blocks and 8388608 inodes
Filesystem UUID: b9ab14a5-7d2e-4a30-91a6-7165847329e6
Superblock backups stored on blocks: 
	32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632, 2654208, 
	4096000, 7962624, 11239424, 20480000, 23887872

Allocating group tables: done                            
Writing inode tables: done                            
Creating journal (32768 blocks): done
Writing superblocks and filesystem accounting information: done     

Next mount point appears to be /mnt/data1
Mounting disk /dev/sdc1 on /mnt/data1
Working on /dev/sdd
/dev/sdd is not partitioned, partitioning
Creating filesystem on /dev/sdd1.
mke2fs 1.42.13 (17-May-2015)
Discarding device blocks: done                            
Creating filesystem with 33554176 4k blocks and 8388608 inodes
Filesystem UUID: 20f8a7f2-bd36-45cf-8926-5074613ae669
Superblock backups stored on blocks: 
	32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632, 2654208, 
	4096000, 7962624, 11239424, 20480000, 23887872

Allocating group tables: done                            
Writing inode tables: done                            
Creating journal (32768 blocks): done
Writing superblocks and filesystem accounting information: done     

Next mount point appears to be /mnt/data2
Mounting disk /dev/sdd1 on /mnt/data2
Connection to k8s-agent-34509323-1 closed.
Warning: Permanently added 'k8s-agent-34509323-2,10.240.0.6' (ECDSA) to the list of known hosts.
Working on k8s-agent-34509323-2...
Disks are /dev/sdc /dev/sdd
Working on /dev/sdc
/dev/sdc is not partitioned, partitioning
Creating filesystem on /dev/sdc1.
mke2fs 1.42.13 (17-May-2015)
Discarding device blocks: done                            
Creating filesystem with 33554176 4k blocks and 8388608 inodes
Filesystem UUID: 1559e36c-c4f9-446c-a074-3028d0340940
Superblock backups stored on blocks: 
	32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632, 2654208, 
	4096000, 7962624, 11239424, 20480000, 23887872

Allocating group tables: done                            
Writing inode tables: done                            
Creating journal (32768 blocks): done
Writing superblocks and filesystem accounting information: done     

Next mount point appears to be /mnt/data1
Mounting disk /dev/sdc1 on /mnt/data1
Working on /dev/sdd
/dev/sdd is not partitioned, partitioning
Creating filesystem on /dev/sdd1.
mke2fs 1.42.13 (17-May-2015)
Discarding device blocks: done                            
Creating filesystem with 33554176 4k blocks and 8388608 inodes
Filesystem UUID: 62f59ba0-05a3-4800-823e-38783450e5c8
Superblock backups stored on blocks: 
	32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632, 2654208, 
	4096000, 7962624, 11239424, 20480000, 23887872

Allocating group tables: done                            
Writing inode tables: done                            
Creating journal (32768 blocks): done
Writing superblocks and filesystem accounting information: done     

Next mount point appears to be /mnt/data2
Mounting disk /dev/sdd1 on /mnt/data2
Connection to k8s-agent-34509323-2 closed.
Warning: Permanently added 'k8s-agent-34509323-3,10.240.0.7' (ECDSA) to the list of known hosts.
Working on k8s-agent-34509323-3...
Disks are /dev/sdc /dev/sdd
Working on /dev/sdc
/dev/sdc is not partitioned, partitioning
Creating filesystem on /dev/sdc1.
mke2fs 1.42.13 (17-May-2015)
Discarding device blocks: done                            
Creating filesystem with 33554176 4k blocks and 8388608 inodes
Filesystem UUID: 9aa0941d-6b06-4d46-a8cb-754e2f0b27e1
Superblock backups stored on blocks: 
	32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632, 2654208, 
	4096000, 7962624, 11239424, 20480000, 23887872

Allocating group tables: done                            
Writing inode tables: done                            
Creating journal (32768 blocks): done
Writing superblocks and filesystem accounting information: done     

Next mount point appears to be /mnt/data1
Mounting disk /dev/sdc1 on /mnt/data1
Working on /dev/sdd
/dev/sdd is not partitioned, partitioning
Creating filesystem on /dev/sdd1.
mke2fs 1.42.13 (17-May-2015)
Discarding device blocks: done                            
Creating filesystem with 33554176 4k blocks and 8388608 inodes
Filesystem UUID: cd2872c1-da6a-47cc-b4b3-24649d2c79f5
Superblock backups stored on blocks: 
	32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632, 2654208, 
	4096000, 7962624, 11239424, 20480000, 23887872

Allocating group tables: done                            
Writing inode tables: done                            
Creating journal (32768 blocks): done
Writing superblocks and filesystem accounting information: done     

Next mount point appears to be /mnt/data2
Mounting disk /dev/sdd1 on /mnt/data2
Connection to k8s-agent-34509323-3 closed.
```
