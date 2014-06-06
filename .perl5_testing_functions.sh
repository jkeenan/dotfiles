# Must define $PERL_WORKDIR and $TEST_JOBS in .bashrc

updateblead ()
{
    cd ~/${PERL_WORKDIR};
    git clean -dfx;
    git fetch --prune origin;
    git checkout blead;
    git rebase origin/blead
}

configure_and_make ()
{
    sh ./Configure -des -Dusedevel && make -j${TEST_JOBS}
}

buildblead ()
{
    updateblead && configure_and_make
}

testcurrent  ()
{
    TEST_JOBS=${TEST_JOBS} make -j${TEST_JOBS} test_harness
}

testblead  ()
{
    buildblead && testcurrent
}

buildcurrent ()
{
    cd ~/${PERL_WORKDIR};
    git clean -dfx;
    configure_and_make && make test_prep
}

buildtestcurrent ()
{
    cd ~/${PERL_WORKDIR};
    git clean -dfx;
    configure_and_make && testcurrent
}

