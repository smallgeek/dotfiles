" 基本設定
" -------------------------------------------------------------------------------------------------

let g:save_window_file = expand('~/.vimwinpos')
augroup SaveWindow
  autocmd!
  autocmd VimLeavePre * call s:save_window()
  function! s:save_window()
    let options = [
          \ 'set columns=' . &columns,
          \ 'set lines=' . &lines,
          \ 'winpos ' . getwinposx() . ' ' . getwinposy(),
          \ ]
     call writefile(options, g:save_window_file)
  endfunction
augroup END
 
if has('vim_starting') && filereadable(g:save_window_file)
  execute 'source' g:save_window_file
endif

" 使用テーマ
colorscheme railscasts

" Windows で斜体が見づらいため上書き
hi Comment guifg=#BC9458 gui=NONE ctermfg=137
hi Todo    guifg=#BC9458 guibg=NONE gui=NONE ctermfg=94

"------------------------------------
"  NERDTree
"------------------------------------
" 隠しファイルをデフォルトで表示させる
let NERDTreeShowHidden = 1

autocmd VimEnter * NERDTree
