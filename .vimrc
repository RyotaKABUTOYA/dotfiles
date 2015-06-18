
"行番号を表示
set number
"タブ幅を設定
set tabstop=4
"自動インデント
set autoindent
"タブで空白を挿入
set expandtab

set shiftwidth=4
"シンタックスをオン
set syntax=ON

"NeoBundleの設定
set nocompatible
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

"プラグインを入れる

call neobundle#end()
filetype plugin indent on


