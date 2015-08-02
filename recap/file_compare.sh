#/usr/bin/env bash
## This script is used for file compare operation

if [ -e /var/log/syslog ] # exist, note [ ] needs some space before it
then
	echo "File /var/log/syslog exists"
else
	echo "File /var/log/syslog doesn't exist"
fi


if [ -d /tmp/mydir ] # -d means directory
then
	echo "Directory /tmp/mydir exist"
else
	echo "Directory /tmp/mydir doesn't exist"
fi


if [ -f /usr/bin/grep ] # -f means normal file
then
	echo "/usr/bin/grep is a normal file"
else
	echo "/usr/bin/grep isn't a normal file"
fi


if [ -L /usr/bin/grep ] # -L means symbolic file
then
	echo "/usr/bin/grep is a symbolic file"
else
	echo "/usr/bin/grep isn't a symbolic file"
fi

if [ -r /var/log/syslog ] # -r means readable
then
	echo "/var/log/syslog is readable"
else
	echo "/var/log/syslog isn't readable"
fi

if [ -w /var/mytmp.txt ] # -w means writable
then
	echo "/var/mytmp.txt is writable"
else
	echo "/var/mytmp.txt isn't writable"
fi

if [ -x /bin/grep ] # -x executable
then
	echo "/bin/grep is executable"
else
	echo "/bin/grep isn't executable"
fi

if [ /tmp/install/etc/services -nt /etc/services ]
then
	echo "/tmp/install/etc/services is newer than /etc/services"
else
	echo "/tmp/install/etc/services is not newer than /etc/services"
fi

if [ /boot/bzImage -ot arch/i386/boot/bzImage ]
then
	echo "/boot/bzImage is older than arch/i386/boot/bzImage"
else
	echo "/boot/bzImage is not older than arch/i386/boot/bzImage"
fi
