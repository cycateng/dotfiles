"#####表示設定#####
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set tabstop=4 "インデントをスペース4つ分に設定
set shiftwidth=4
set expandtab "tabを半角スペースで挿入
set smartindent "オートインデント

"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る

"#####追加設定#####
set nrformats-=octal "0始まる数値を8進数として扱わない
set hidden "ファイルの保存をしていなくても、他のファイルが開ける
set virtualedit=block "文字のないところにカーソル移動できる
set whichwrap=b,s,[,],<,> "カーソルの回り込みができる

"vundleを利用したプラグインのインストール
"set nocompatible
"filetype off

"set rtp+=~/vimfiles/vundle.git/ "vundleの場所
"call vundle#rc()
"Bundle 'Shougo/neocomplcache' "Bundleは使用するプラグインを書く。
"Bundle 'Shougo/unite.vim'
"Bundle 'thinca/vim-ref'
"BUndle 'thinca/vim-quickrun'
"filetype plugin indent on " required!

"NeoBundle
set nocompatible

if has('vim_starting')
        set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" NeoBundleの設定開始
call neobundle#begin(expand('~/.vim/bundle/'))

" NeoBundleのバージョンを自身で管理する
NeoBundleFetch 'Shougo/neobundle.vim'

" インストールしたいプラグインを記述
NeoBundle 'Shougo/unite.vim' "unite.vimのインストール
NeoBundle 'ujihisa/unite-colorscheme'
" カラースキームmolokaiをインストール
NeoBundle 'tomasr/molokai'
" デフォルトのカラースキームの設定
colorscheme molokai " <カラースキーム名>
if &term =~ "xterm-256color" || "screen-256color"
        set t_Co=256
        set t_Sf=[3%dm
        set t_Sb=[4%dm
elseif &term =~"xterm-color"
        set t_Co=8
        set t_Sf=[3%dm
        set t_Sb=[4%dm
endif

syntax enable
hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c

" vimprocのインストール
" vimを非同期処理による高速化プラグイン
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\   'windows' : 'tools\\update-dll-mingw',
\   'cygwin' : 'make -f make_cygwin.mak',
\   'mac' : 'make',
\   'linux' : 'make',
\   'unix' : 'gmake',
\   }
\}

" neocomplete.vim
" 補完機能プラグイン　<C-n>, <C-p>
if has('lua')
        NeoBundleLazy 'Shougo/neocomplete.vim', {
                                \'depends' : 'Shougo/vimproc',
                                \'autoload' : 'Shougo/vimproc',
                                \}
endif

" neocomplete {{{
let g:neocomplete#enable_at_startup                 =1
let g:neocomplete#auto_completion_start_length      =3
let g:neocomplete#enable_ignore_case                =1
let g:neocomplete#enable_smart_case                 =1
let g:neocomplete#enable_camel_case                 =1
let g:neocomplete#use_vimproc                       =1
let g:neocomplete#sources#buffer#cache_limit_size   =1000000
let g:neocomplete#sources#tags#cache_limit_size     =30000000
let g:neocomplete#enable_fuzzy_completion           =1
let g:neocomplete#lock_buffer_name_pattern          = '\*ku\*'
" }}}

" vimshell
" vimでコンソールを起動するプラグイン　vpで起動
NeoBundleLazy 'Shougo/vimshell', {
                        \ 'depends' : 'Shougo/vimproc',
                        \ 'autoload' : {
                        \   'commands' : [{ 'name' : 'VimShell', 'complete' : 'customlist,vimshell#complete'},
                       \ 'VimShellExecute', 'VimShellInteractive',
                        \ 'VimShellTerminal', 'VimShellPop'],
                        \   'mappings' : ['<Plug>{vimshell_switch)']
                        \ }}

" vimshell {{{
nmap <silent> vs :<C-u>VimShell<CR>
nmap <silent> vp :<C-u>VimShellPop<CR>
" }}}

" yankround
" ヤンク履歴を保持するプラグイン 
" ペースト後に<C-p>, <C-n>で起動
NeoBundle 'LeafCage/yankround.vim'

" yankround.vim {{{
nmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)
let g:yankround_max_history = 100
nnoremap <Leader><C-p> :<C-u>Unite yankround<CR>
" }}}

" vim-autoclose
" 括弧など自動で閉じるプラグイン
NeoBundle 'Townk/vim-autoclose'

" emmet-vim (html)
" html/cssで使えるプラグイン
" 参照：http://qiita.com/alpaca_taichou/items/056a4c42fe7a928973e6
NeoBundle 'mattn/emmet-vim'

" NeoBundleの設定終了
call neobundle#end()

filetype plugin indent on

" vim起動時に未インストールのプラグインをインストールする
NeoBundleCheck
