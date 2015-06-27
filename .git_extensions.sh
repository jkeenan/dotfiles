gitcurr ()
{
    git branch | grep \* | sed -e 's/^\* //'
}

# May 29 2014
gitlogf ()
{
    git log --format=fuller --date=local
}

