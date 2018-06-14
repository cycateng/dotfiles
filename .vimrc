"cycateng
"#####表示設定#####
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set tabstop=4 "インデントをスペース4つ分に設定
set shiftwidth=4
set expandtab "tabを半角スペースで挿入
set smartindent "オートインデント
set cursorline "カーソルラインをハイライト
set ruler "カーソルの位置を数値で表示

"ステータスライン関連:https://qiita.com/tashua314/items/101f1bec368c75a90251
set statusline+=%F "ファイル名表示 小文字のfでファイル名のみ表示
set statusline+=%m "変更されているかを表示
set statusline+=%r "読み込み専用かどうか表示
set statusline+=%h "ヘルプページが表示されているときに[HELP]と表示
set statusline+=%w "プレビューウィンドウなら[Preview]と表示
set statusline+=%= "これ以降は右より
set statusline+=[%{&fileencoding}] "ファイルの文字コード表示
set statusline+=[%l/%L] "カーソルの位置表示[現在の行数/全体の行数]
set laststatus=2 "ステータスラインと常に表示(0:表示しない, 1:ウィンドウが2つ以上のときのみ表示)

"#####エンコード関連#####
set encoding=utf-8 "ファイルをutf-8で読み込む
set fileencoding=utf-8 "保存時の文字コード
set fileencodings=ucs-boms,utf-8,euc-jp,cp932 "読み込み時の文字コード自動判別　左優先
set fileformats=unix,dos,mac "改行コードの自動判別　左優先

"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る

"#####追加設定#####
set nrformats-=octal "0始まる数値を8進数として扱わない
set hidden "ファイルの保存をしていなくても、他のファイルが開ける
set virtualedit=block "文字のないところにカーソル移動できる
set whichwrap=b,s,[,],<,> "カーソルの回り込みができる
set wildmenu "コマンドモードの補完

set hlsearch "検索結果のハイライト表示
nnoremap <ESC><ESC> :nohlsearch<CR>
"esc2回でハイライトを消す

"エラー時のビープ音削除
set visualbell t_vb=
set noerrorbells

"検索語が画面の真ん中に来るようにする
nmap n nzz 
nmap N Nzz 
nmap * *zz 
nmap # #zz 
nmap g* g*zz 
nmap g# g#zz

inoremap <silent> jj <ESC> "j 2回でインサートモードからコマンドモードへ移行

" カラースキームをmolokaiに変える
colorscheme molokai

" Shift-TABで逆タブ
imap <S-Tab> <C-d>

" 背景を投下するプラグインSeiya.vimを自動的にEnableにする
let g:seiya_auto_enable=1

" 以下Vim8.0対応
set backspace=indent,eol,start

" マウスの有効化
if has('mouse')
    set mouse=a
    if has('mouse_sgr')
        set ttymouse=sgr
    elseif v:version > 703 || v:version is 703 && has('patch632')
        set ttymouse=sgr
    else
        set ttymouse-xterm2
    endif
endif

