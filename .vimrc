""" インデント
" インデント 前の行のインデントを引き継ぐ
set autoindent
" インデント {の次は深くなど
set smartindent


""" 装飾
" 色付き表示
syntax on
" number 行番号
set number
" ステータスラインの常時表示
set laststatus=2
" ステータスラインフォーマット
set statusline=%F%m%r%h%w\ [%{&fileencoding}][%{&ff}][\%03.3b=\%02.2B]\%=%04l/%04L,%04v[%03p%%]

""" 操作
" backspace 強い
set backspace=2
" シフト移動幅
set shiftwidth=2
" Tabの代わりに空白挿入
set expandtab
" Tabでshiftwidth分だけインデント
set smarttab
" 閉じ括弧入力時、対応括弧表示
set showmatch

""" ファイル
" 改行コード自動認識
set fileformats=unix,dos,mac
" vim デフォルトエンコーディング
set encoding=utf-8
" ファイルエンコーディング
set fileencoding=utf-8
"set fileencodings=iso-2022-jp,euc-jp,cp932

""" 検索
" 大文字/小文字区別無し
set ignorecase
" 下までいったら上から
set wrapscan
" 検索結果ハイライト
set hlsearch

""" 不可視文字
" フォーマット
set listchars=eol:\ ,trail:-,tab:>-

""" dein.vim
if &compatible
  set nocompatible
endif

if has('nvim')
  let s:dein_cache_path = expand('~/.cache/nvim/dein')
  set mouse=
else
  let s:dein_cache_path = expand('~/.cache/vim/dein')
endif

let s:dein_dir = s:dein_cache_path . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~ '/dein.vim'
  if !isdirectory(s:dein_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
  endif
  execute 'set runtimepath+=' . fnamemodify(s:dein_dir, ':p')
endif

if dein#load_state(s:dein_cache_path)
  call dein#begin(s:dein_cache_path)

""" add plugins
  call dein#add('cocopon/iceberg.vim')

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable

colorscheme iceberg
