" Vim syntax file
" Language:         GLog log files
" Maintainer:       Daniel Miller <Peaches491@gmail.com>
" Latest Revision:  2017-09-01
" Changes:          2017-09-01 Initial version

" Based on vim-log-syntax - syntax file to highlight various log files.

if exists("b:current_syntax")
  finish
endif

syn region log_debug    start='^D\d\d\d\d ' end=/^\ze[IWEF]\d\d\d\d/
syn region log_info     start='^I\d\d\d\d ' end=/^\ze[DWEF]\d\d\d\d/
syn region log_warning  start='^W\d\d\d\d ' end=/^\ze[DIEF]\d\d\d\d/
syn region log_error    start='^E\d\d\d\d ' end=/^\ze[DIWF]\d\d\d\d/
syn region log_fatal    start='^F\d\d\d\d ' end=/^\ze[DIWE]\d\d\d\d/


highlight log_debug    ctermfg=darkcyan
highlight log_info     ctermfg=lightgrey
highlight log_warning  ctermfg=3
highlight log_error    ctermfg=darkred                 term=bold
highlight log_fatal    ctermfg=white   ctermbg=darkred term=bold

let b:current_syntax = "log"
