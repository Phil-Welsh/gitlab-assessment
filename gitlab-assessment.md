# Phil Welsh Gitlab Assessment

## Question #1

````bash
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
````

## Question #2

The web application latency could be caused by several reasons, including:

- High CPU usage
- Application bottlenecks
- Geographic latency
- Non-optemized queries
- Lack of load balancing
- Disabled caching

To troubleshoot this, I would do the following:

Client-side:

- Determine which action/page specifically is slow
- Have user delete cookies/site data
- Ensure other websites are loading quickly
- Try incognito browser

Server-side:

- Use `tops` utility to determine active CPUs
- 
