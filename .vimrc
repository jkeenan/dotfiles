set ruler

if &t_Co > 2 || has("gui_running")
  syntax on
endif

filetype plugin indent on

set wrapmargin=6
set textwidth=78
set tabstop=4
set expandtab
set shiftwidth=4
set shiftround
set backspace=indent,eol,start

set history=50

" flip qw(no_plan) on/off
map ,ton  <ESC>:%s/More tests =>/More qw(no_plan); # tests =>/<CR>
map ,toff <ESC>:%s/More qw(no_plan); # /More /<CR>$b

" insert/remove comment sign at start of line
vmap ,ic :s/^/#/g<CR>:let @/ = ""<CR>
vmap ,rc :s/^#//g<CR>:let @/ = ""<CR>
map  ,ic :s/^/#/g<CR>:let @/ = ""<CR>
map  ,rc :s/^#//g<CR>:let @/ = ""<CR>

" handle paste/nopaste
map ,sp :set paste<CR>
map ,snp :set nopaste<CR>

" bring up .vimrc for editing
map ,v :sp $VIMRC<CR><C-W>_

" frequent Perl commands
map ,pc :!perl -c %<CR>
map ,pm :!perl Makefile.PL;make;make test<CR>
map ,prb :!prove -vb %<CR>
map ,prba :!prove -vb t/*.t<CR>

" bash commands
map ,icaa :r /home/jkeenan/.import_com.atomicscala.AtomicTest._

set modeline
