" ~/.vimrc
"
" za, o : 折畳を開く/閉じる
" zM    : 全ての折畳を閉じる

set nocompatible

"{{{1 基本設定

set fileencodings=iso-2022-jp,euc-jp,cp932,sjis,utf-8
"set fileencodings=utf-8,shift_jis

set backspace=indent,eol,start

set number
set list
set listchars=tab:»\ ,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set statusline=%F%m%r%h%w%=[%{&fenc}][%{&ff}][%l/%L]
set laststatus=2

set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

set hlsearch
set incsearch

set modelines=5

syntax on

" }}}
"{{{1 NeoBundle
"{{{2 NeoBundle Settings

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
"
" You can specify revision/branch/tag.
"NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

"NeoBundle 'Shougo/unite.vim'
"NeoBundle 'Shougo/neosnippet.vim'
"NeoBundle 'Shougo/neosnippet-snippets'
"NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'ctrlpvim/ctrlp.vim'
"NeoBundle 'flazz/vim-colorschemes'

"{{{2 vimdoc-ja
NeoBundle 'vim-jp/vimdoc-ja'

"{{{2 vim-easymotion
NeoBundle 'easymotion/vim-easymotion'

"{{{2 neocomplcache
NeoBundle 'Shougo/neocomplcache'

"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

"{{{2 vim-go
"NeoBundle 'fatih/vim-go'

"{{{2 End of NeoBundle
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"{{{1 ユーザー定義関数

"{{{1 ユーザー定義コマンド

" XXX ユーザー定義コマンドで引数に補完を使いたい

func! CustomString(argLead, cmdLine, cursorPos)
    return "a\nb"
endfunc

func! CustomList(argLead, cmdLine, cursorPos)
    return ['a', 'b']
endfunc

command! -nargs=1 -complete=custom,CustomString    CS  echo 'arg=<args>'
command! -nargs=1 -complete=customlist,CustomList  CL  echo 'arg=<args>'

"{{{1 ユーザー定義キーマップ

augroup Vimrc
    autocmd!
    au BufRead .vimrc  nnoremap <buffer>  o  za
augroup END

nnoremap  <Esc><Esc>  :nohl<CR>
nnoremap  <Tab>    :tabn<CR>
nnoremap  <S-Tab>  :tabN<CR>
nnoremap  S  :tabe ~/.vimrc<CR>

"}}}1

colorscheme elflord

" vim: fdm=marker
