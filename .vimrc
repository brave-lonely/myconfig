set nocompatible    " Disable vi compatibility
filetype off        " required
syntax on           " 语法高亮
set number          " 显示行号
set nowrap          " 不换行
set hlsearch        " 搜索结果高亮
set smartindent     " 智能缩进
set ruler           " 在状态栏显示当前光标位置
set bg=dark         " 设置背景风格为dark
set helplang=cn
set fencs=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

	" Vundle插件支持  required
	 Plugin 'VundleVim/Vundle.vim'    

        "文件跳转插件	 
	 Plugin 'git://git.wincent.com/command-t.git'


call vundle#end()            " required



