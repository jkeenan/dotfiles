gitcurr ()
{
    git branch | grep \* | sed -e 's/^\* //'
}

gitlogf ()
{
    git log --format=fuller --date=local
}

