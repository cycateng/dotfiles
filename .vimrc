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

"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る

"#####追加設定#####
set nrformats-=octal "0始まる数値を8進数として扱わない
set hidden "ファイルの保存をしていなくても、他のファイルが開ける
set virtualedit=block "文字のないところにカーソル移動できる
set whichwrap=b,s,[,],<,> "カーソルの回り込みができる

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


