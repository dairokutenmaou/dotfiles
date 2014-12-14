"-------------
"プラグイン管理
"-------------
set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/dotfiles/.vim/bundle/neobundle.vim/
	  call neobundle#rc(expand('~/dotfiles/.vim/bundle/'))
		endif

		call neobundle#begin(expand('~/dotfiles/.vim/bundle/'))

		"NeoBundleをNeobundl自身で管理する
		NeoBundleFetch 'Shougo/neobundle.vim'

		"読み込むプラグインの指定
		NeoBundle "https://github.com/thinca/vim-quickrun"

		NeoBundle "Shougo/neocomplete.vim"

		NeoBundle "t9md/vim-quickhl"
		" <Space>m でカーソル下の単語、もしくは選択した範囲のハイライトを行う
		" " 再度 <Space>m を行うとカーソル下のハイライトを解除する
		" " これは複数の単語のハイライトを行う事もできる
		" " <Space>M で全てのハイライトを解除する
		nmap <Space>m <Plug>(quickhl-manual-this)
		xmap <Space>m <Plug>(quickhl-manual-this)
		nmap <Space>M <Plug>(quickhl-manual-reset)
		xmap <Space>M <Plug>(quickhl-manual-reset)

		NeoBundle "tyru/caw.vim"
		"コメントアウトを切り替えるマッピング
		"\c でカーソル行をコメントアウト
		"再度 \c でコメントアウトを解除
		"選択してから複数行の \c も可能
		nmap \c <Plug>(caw:I:toggle)
		vmap \c <Plug>(caw:I:toggle)
		"\C でコメントアウトの解除
		nmap \C <Plug>(caw:I:uncomment)
		vmap \C <Plug>(caw:I:uncomment)

		NeoBundle 'itchyny/lightline.vim'
		let g:indent_guides_enable_on_vim_startup = 1

		NeoBundle 'https://github.com/nathanaelkane/vim-indent-guides'

		NeoBundle 'scrooloose/nerdtree'

		NeoBundle 'https://github.com/MetalPhaeton/easybracket-vim'

		"##カラースキーム##
		NeoBundle 'nanotech/jellybeans.vim'
		NeoBundle 'w0ng/vim-hybrid'
		NeoBundle 'vim-scripts/twilight'
		NeoBundle 'jonathanfilip/vim-lucius'
		NeoBundle 'jpo/vim-railscasts-theme'
		NeoBundle 'altercation/vim-colors-solarized'
		NeoBundle 'vim-scripts/Wombat'
		NeoBundle 'tomasr/molokai'
		NeoBundle 'vim-scripts/rdark'

		" カラースキーム一覧表示に Unite.vim を使う
		NeoBundle 'Shougo/unite.vim'
		NeoBundle 'ujihisa/unite-colorscheme'


		call neobundle#end()
	filetype plugin indent on
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

"-------
"その他
"------
"vi互換を切る
set nocompatible
"履歴保存数
set history=10000
"プラグインの自動更新
NeoBundleCheck
