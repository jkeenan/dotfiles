gitcurr ()
{
    git branch | grep \* | sed -e 's/^\* //'
}

# May 29 2014
gitlogf ()
{
    git log --pretty=fuller --date=local
}

# Oct 21 2015
gitst ()
{
    git status
}

# Oct 22 2015
gitbr ()
{
    git branch
}

# Feb 07 2015
gitdstag ()
{
    git diff --cached
}

# Feb 10 2018
gitshowf ()
{
    git show --format=fuller $1
}

# Jan 14 2024
gclean ()
{
    git clean -dfxq
}

# Jun 23 2024
gitrecent ()
{
    git branch --sort=-committerdate
}

# Aug 17 2025
gfo ()
{
    git fetch --prune origin
}

# Aug 31 2025
# Produce a sorted list of the directories holding checkouts of git
# repositories of my own projects.  This should be suitable for pipelines
# handling more extended searching or filtering.
mygitwork ()
{
    find $GIT_WORKDIR -maxdepth 1 -type d | ack -v '(gitwork|perl|perl2|perl-security|zzzothers)$' | sort
}

# Nov 23 2026
gitnextsha ()
{
    BRANCH=`git branch | grep \* | sed -e 's/^\* //'`
    echo `git rev-list --ancestry-path $1..$BRANCH --reverse | head -n 1`
}

