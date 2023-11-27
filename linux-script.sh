_USERS_FILE=/etc/passwd

_MD5_USERS_FILE="current_users.txt"

_USERS=$(awk -F: 'NR>10 {print $1, ":", $6, "\\n"}' $_USERS_FILE)

if [ ! -f run.txt ]
then
    for i in $_USERS
        do
            echo $i | md5sum >> $_MD5_USERS_FILE
            touch "run.txt"
        done
else
    _MD5_USERS=$(awk '{print}' $_MD5_USERS_FILE)
    for i in $_MD5_USERS
    do
        
    done
fi
