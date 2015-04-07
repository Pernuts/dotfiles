"
" vimrc
"

set number 			" 行番号
set tabstop=4			" タブをスペース4つに
set expandtab			" タブを半角スペースに
set shiftwidth=4		" 自動で生成されるタブをスペース4つに
set smartindent			" 自動でインデント
set list			" 空白文字の可視化、その表示形式↓
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set nrformats-=octal		" 0で始まる数値を8進数として扱わないように
set hidden			" ファイルを保存していなくても別のファイルを開けるように
set whichwrap=b,s,[,],<,>	" カーソルの回り込み
set backspace=indent,eol,start	" バックスペースを、空白、行末、行頭でも使えるように
