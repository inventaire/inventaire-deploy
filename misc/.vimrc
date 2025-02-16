set number
syntax on
set syntax=sh

set history=100

" read/write a .viminfo file, don't store more
" than 50 lines of registers
set viminfo='20,\"50

" show the cursor position all the time
set ruler

" switch on highlighting the last used search pattern
set hlsearch


" Autocommands structure
" source: http://learnvimscriptthehardway.stevelosh.com/chapters/12.html
"
" :autocmd BufNewFile *.txt :write
"          ^          ^     ^
"          |          |     |
"          |          |     The command to run.
"          |          |    
"          |          A     "pattern" to filter the event.
"          |
"          The "event" to watch for.


" Only do this part when compiled with support for autocommands
if has("autocmd")

  " Autocommand Groups http://learnvimscriptthehardway.stevelosh.com/chapters/14.html
  augroup maxlath

  " Remove ALL autocommands for the current group.
  autocmd!

  " In text files, always limit the width of text to 78 characters
  " autocmd BufRead *.txt set tw=78
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif

  autocmd BufReadPost COMMIT_EDITMSG
  \ exe "normal! gg"

  " don't write swapfile on most commonly used directories for NFS mounts or USB sticks
  " autocmd BufNewFile,BufReadPre /media/*,/run/media/*,/mnt/* set directory=~/tmp,/var/tmp,/tmp

  " start with spec file template
  " autocmd BufNewFile *.spec 0r /usr/share/vim/vimfiles/template.spec

  augroup END

endif

