" s_hiiragi's .vimrc
" 
" za, o : 折畳を開く/閉じる
" zA, O : 折畳を再帰的に開く/閉じる
nnoremap o za
nnoremap O zA

" 基本的な設定 {{{

set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set backspace=indent,eol,start
set shiftwidth=4
set noexpandtab

set number
syntax on
set list
set listchars=tab:»\ ,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set tabstop=4
set softtabstop=0

" }}}
" プラグイン {{{

" NeoBundle {{{

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
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

"NeoBundle 'https://github.com/Shougo/unite.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" }}}

" }}}
" 設定おわり {{{

" vim: set fenc=utf-8 ff=unix foldmethod=marker:

