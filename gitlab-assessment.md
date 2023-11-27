# Phil Welsh Gitlab Assessment

## Question #1

````bash
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
````

Admittedly, I ran out of time on this one. The code here works, but I need to add the portions that check for a change in the checksum, adds a line to `user_changes`, and overwrites the old checksum.

This was a fun project and I learned a lot. I apologize that I wasn't able to get it fully working, but I'd like to be cognizant of time.

## Question #2

The web application latency could be caused by several reasons, including:

- High CPU usage
- Application bottlenecks
- Geographic latency
- Non-optimized queries
- Lack of load balancing
- Disabled caching

To troubleshoot this, I would do the following:

Client-side:

- Determine which action/page specifically is slow
- Have user delete cookies/site data
- Ensure other websites are loading quickly
- Try incognito browser
- Ensure customer is using up to date browser

Server-side:

- Use `tops` utility to determine active CPUs
- Analyze logs for abnormalities
- Ensure caching is enabled
- Check to see if there are any cron jobs taking resources
- Use `iotop` command to determine disc I/O

## Question #3

1. git add .
2. git commit -m "foo"
3. git add .
4. git commit -m "bar"
5. git checkout -b awesomeFeature
6. git checkout main
7. git pull
8. git merge awesomeFeature
9. git add .
10. git commit -m "foobar"

## Question #4

Hi there, aspiring Git-gurus!

My name is Phil Welsh, and I'm a technical writer at Gitlab. In this tutorial, I'll be demonstrating how to use Git to implement a new feature/branch without affecting the main branch. It's important to not affect the main branch because the other software engineers on your team are working off that main branch.

This tutorial assumes you've already cloned the git repo to your local computer. If you need help with that, please check out this documentation first: https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository

So, you're now on the main branch and you're ready to start your new feature. First, we need to create a new branch using the following command:

```
git checkout -b [BRANCH_NAME]
```

We've basically taken the entire main branch and copy pasted it over to a new branch with a new name. In this moment, it's parallel to the main branch.

Then, we'll do the fun part! Pop open your IDE and start coding! Once you reach logical stopping points, you'll make commits. Commits are basically mini-milestones in your feature. To do this, try the following commands:

```
git add . (This command adds every changed file to the Git "staging area")
git commit -m "First commit" (This command commits the change to your branch)
```

Once you're done coding, a couple different things can happen. If you're working on a project alone, you can easily merge your code in, as (hopefully) nothing has changed in the code!

If you're working on a team, you want to make sure that no one else has worked on the same files as you. If someone has, then you might encounter a "merge conflict". This situation arises when you have two conflicting files in your Git repo. Also, when you're working on a team, you will likely need to have someone "approve" your merge request.

If you're merging on your local machine, your commands will likely look like the following:

```
git checkout main
git pull
git merge myAwesomeFeature
```

Hopefully you've found this tutorial helpful! Learning git can be challenging, but it's well worth the time and effort.

## Question #5

I recently read this article when someone posted it on my company's Slack: https://newsletter.pragmaticengineer.com/p/measuring-developer-productivity

The article is in response to McKinsey's article here: https://www.mckinsey.com/industries/technology-media-and-telecommunications/our-insights/yes-you-can-measure-software-developer-productivity

I thought the Pragmatic Engineer article was a very thoughtful, well-crafted critique of McKinsey's approach to measuring developer productivity. I tend to agree with the article's findings, including the notion that we should measure outcome and impact, not effort.
