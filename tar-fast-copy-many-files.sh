# https://serverfault.com/questions/18125/how-to-copy-a-large-number-of-files-quickly-between-two-servers
tar -cf - section01 | tar -xf - -C /mnt/destination01/

# https://www.unix.com/unix-for-advanced-and-expert-users/150115-how-zip-tar-millions-files.html
tar cf - /my/path | ( cd /new/target; tar xfp -)
