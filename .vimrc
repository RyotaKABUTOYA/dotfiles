
"行番号を表示
set number
"タブ幅を設定
set tabstop=4
"自動インデント
set autoindent
"タブで空白を挿入
set expandtab
"自動インデントの各段階に使われる空白の数
set shiftwidth=4
"対応する括弧を表示
set showmatch
"検索時に大文字、小文字を区別
set smartcase
"新しい行を作成時に高度な自動インデントを行う
set smartindent
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

"NERDTree(画面端にファイルエクスプローラーを出すやつ)
NeoBundle 'scrooloose/nerdtree'
"NERDTreeのショートカット設定
nnoremap <silent><C-e> :NERDTreeToggle<CR>

"neocomplcache.vim(入力補完)
NeoBundle 'Shougo/neocomplcache'
"Disable AutoComplPop.
let g:acp_enableAtStartup = 0
"Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
            \ 'default' : ''
            \ }

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

"ctrilp.vim(ファイルの履歴を出す？)
NeoBundle "ctrlpvim/ctrlp.vim"

"ソースコードの自動整形
NeoBundle 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vip)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

call neobundle#end()
filetype plugin indent on


