"#####表示設定#####
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set tabstop=4 "インデントをスペース4つ分に設定
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

" NeoBundleの設定終了
call neobundle#end()

filetype plugin indent on

" vim起動時に未インストールのプラグインをインストールする
NeoBundleCheck
