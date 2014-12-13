"----
"表示
"----
"シンタックスハイライトon
syntax on
"行番号
set number
"ルーラー
set ruler
"編集中のファイル名を表示
set title
"対応する括弧を強調
set showmatch
"カーソル行の背景色を変える
set cursorline
"ステータス行を常に表示する
set laststatus=2
"コマンドラインの行数
set cmdheight=2
"不可視文字の表示
set list
"不可視文字の記号指定
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮

"---------
"編集/入力
"---------
"画面上でタブ文字が占める幅
set tabstop=2
"オートインデント
set cindent
"オートインデントでずれる幅
set shiftwidth=2
"連続した空白に対してtabやbackspaceでカーソルが動く範囲
set softtabstop=2

"-----------
"検索/置換
"----------
"検索文字列のハイライト
set hlsearch
"enterで確定する前から、文字が入力されるたびに検索を行う
set incsearch
"検索で大文字と小文字を区別しない
set ignorecase
"検索文字列に大文字と小文字が混在するときのみ、大文字と小文字を区別する
set smartcase
"最後の検索候補の次は最初
set wrapscan

"-------------
"コマンドライン
"--------------
"コマンドラインモードでのファイル名補完
set wildmenu wildmode=list:longest,full

"------
"その他
"------
"vi互換を切る
set nocompatible
"履歴保存数
set history=10000
