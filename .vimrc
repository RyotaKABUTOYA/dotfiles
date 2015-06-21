
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
syntax enable

"swpファイルを作成しなくする
set noswapfile

"NeoBundleの設定
set nocompatible
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

"プラグインを入れる

"NERDTree(画面端にファイルエクスプローラーを出すやつ)
NeoBundle 'scrooloose/nerdtree'
"NERDTreeのショートカット設定
nnoremap <silent><C-e> :NERDTreeToggle<CR>


call neobundle#end()
filetype plugin indent on


