"
" vimrc
"
set nocompatible                " vim is not vi
filetype off

""--------------------------
" Neobundle Settings
"
set runtimepath+=~/.vim/bundle/neobundle.vim
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundle 'Shougo/neobundle.vim'

" プラグイン



" カラースキーム
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
filetype indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
NeoBundleCheck

"
" End Neobundle Settings.
"--------------------------

set runtimepath+=~/.vim         " ランタイムパス
set number                      " 行番号
set ruler                       " カーソル位置
set cursorline                  " カーソル行ハイライト
set laststatus=2                " ステータスバー
set statusline=%<%F\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']'}%=%l/%4L,%4c%8P
set cmdheight=2                 " メッセージ欄の行数
set showmatch                   " 対応するカッコをハイライト


set tabstop=4                   " タブをスペース4つに
set expandtab                   " タブを半角スペースに
set shiftwidth=4                " 自動で生成されるタブをスペース4つに
set softtabstop=4               " 連続した空白に対してバックスペースで動く数
set smartindent                 " 自動でスマートにインデント
set autoindent                  " 自動インデント
set nrformats-=octal            " 0で始まる数値を8進数として扱わないように
set list                        " 不可視文字を表示、表示記号指定
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮

set hlsearch                    " 検索文字列ハイライト
set incsearch                   " インクリメンタルサーチ
set ignorecase                  " 大文字小文字を区別しない
set smartcase                   " 大文字小文字が混在する場合は区別
set wrapscan                    " 検索最後尾の次に先頭へ

set hidden                      " ファイルを保存していなくても別のファイルを開けるように
set confirm                     " ファイルの保存確認
set autoread                    " 外部で変更されたら読みなおす
set noswapfile                  " noswapfile
set whichwrap=b,s,[,],<,>       " カーソルの回り込み
set backspace=indent,eol,start  " バックスペースを、空白、行末、行頭でも使えるように
set scrolloff=5                 " ウィンドウの端で視界を何行確保するか

set shellslash                  " windowsでもパスの区切りを/にする

set wildmenu                    " コマンドラインモードで補完を有効
set wildmode=list:longest,full  " ファイル名補完
set history=10000               " 履歴

syntax enable
set t_Co=256
colorscheme jellybeans
