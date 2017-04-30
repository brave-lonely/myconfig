set nocompatible	    " Disable vi compatibility
set nu                  " 显示行号
filetype on                 
filetype plugin on         
filetype indent on        
syntax on		    


set autoread
set mouse=a

set tabstop=4
set shiftwidth=4  " 设定>>移动时宽度为4
set softtabstop=4 " 使用退格键一删除4个空格
" set smarttab      " 智能缩进
set wrap          " 自动换行

set pastetoggle=<F9> " 粘贴不换行问题解决办法

" 开启新行时，使用自动缩进
set smartindent
set cin
set showmatch


set hlsearch		    " 搜索结果高亮
set ruler		        " 在状态栏显示当前光标位置
set bg=dark             " 设置背景风格为dark
set helplang=cn

set encoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

	" Vundle插件支持  required
	 Plugin 'VundleVim/Vundle.vim'    

        "文件跳转插件	 
	 Plugin 'git://git.wincent.com/command-t.git'

	 Plugin 'L9'                      " plugin from http://vim-scripts.org/vim/scripts.html

	 Plugin 'tpope/vim-surround'      " plugin from https://github.com/tpope/vim-surround



call vundle#end()            " required
filetype plugin indent on    " required

