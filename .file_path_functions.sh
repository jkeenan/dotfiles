updatefilepath ()
{
    cd ~/${GITDIR}/File-Path;
    git clean -dfx;
    git fetch --prune upstream;
    git checkout master;
    git rebase upstream/master;
}
