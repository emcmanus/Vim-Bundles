" Turn folds on for *.txt files, use by surrounding text with {{{ $text }}}
setlocal foldmethod=marker
highlight Folded guifg=pink ctermfg=171 ctermbg=16

" Space will toggle a fold in normal mode
" http://vim.wikia.com/wiki/VimTip108
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Ignore closed folds for paragraph movements
let g:ip_skipfold = 1

" From:
" https://coderwall.com/p/usd_cw
set foldtext=FoldText()
function! FoldText()
  let l:lpadding = &fdc
  redir => l:signs
    execute 'silent sign place buffer='.bufnr('%')
  redir End
  let l:lpadding += l:signs =~ 'id=' ? 2 : 0

  if exists("+relativenumber")
    if (&number)
      let l:lpadding += max([&numberwidth, strlen(line('$'))]) + 1
    elseif (&relativenumber)
      let l:lpadding += max([&numberwidth, strlen(v:foldstart - line('w0')), strlen(line('w$') - v:foldstart), strlen(v:foldstart)]) + 1
    endif
  else
    if (&number)
      let l:lpadding += max([&numberwidth, strlen(line('$'))]) + 1
    endif
  endif

  let l:markerstart = split(&foldmarker, ',')[0]
  let l:markerend = split(&foldmarker, ',')[1]

  " expand tabs
  let l:start = substitute(getline(v:foldstart), '\t', repeat(' ', &tabstop), 'g')
  let l:end = substitute(substitute(getline(v:foldend), '\t', repeat(' ', &tabstop), 'g'), '^\s*', '', 'g')

  " Hide foldmarkers
  let l:start = substitute(l:start, l:markerstart, '', 'g')
  let l:end = substitute(l:end, l:markerend, '', 'g')

  let l:info = ' (' . (v:foldend - v:foldstart) . ')'
  let l:infolen = strlen(substitute(l:info, '.', 'x', 'g'))
  let l:width = winwidth(0) - l:lpadding - l:infolen

  let l:separator = ' … '
  let l:separatorlen = strlen(substitute(l:separator, '.', 'x', 'g'))
  let l:start = strpart(l:start , 0, l:width - strlen(substitute(l:end, '.', 'x', 'g')) - l:separatorlen)
  let l:text = l:start . ' … ' . l:end

  return l:text . repeat(' ', l:width - strlen(substitute(l:text, ".", "x", "g"))) . l:info
endfunction
