_USERS_FILE=/etc/passwd

_MD5_USERS_FILE="var/log/current_users.txt"

_USERS=$(awk -F: 'NR>10 {print $1, ":", $6, "\\n"}' $_USERS_FILE)

if [ ! -f $_MD5_USERS_FILE ]
then
    for i in $_USERS
        do
            echo $i | md5sum >> $_MD5_USERS_FILE
        done
else
    _MD5_USERS=$(awk '{print}' $_MD5_USERS_FILE)
    for i in $_MD5_USERS
    do
        TODO: Check for checksum change, add a line to `/var/log/user_changes`, and overwrite old checksum
    done
fi

0 * * * * /path/to/process_users.sh
