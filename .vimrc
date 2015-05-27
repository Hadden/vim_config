set nocompatible " be improved
filetype off " required
"** 开始vimrc配置 **

"
"vundle {
set rtp+=~/.vim/bundle/vundle/
"如果在windows下使用的话，设置为 
"set rtp+=$HOME/.vim/bundle/vundle/
call vundle#rc()
"}
"
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
" github上的用户写的插件，使用这种用户名+repo名称的方式
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" vim-scripts repos
" vimscripts的repo使用下面的格式，直接是插件名称
Bundle 'molokai'
Bundle 'taglist.vim'
Bundle 'The-NERD-Commenter'
Bundle 'The-NERD-tree'
Bundle 'Shougo/neocomplcache'
Bundle 'vimwiki'
Bundle 'vim-airline'
Bundle 'EasyGrep'
Bundle 'Tabular'
Bundle 'winmanager'
Bundle 'matrix.vim--Yang'

" non github reposo
" 非github的插件，可以直接使用其git地址
" Bundle 'git://git.wincent.com/command-t.git'
" ...
 
 
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 
" vundle主要就是上面这个四个命令，例如BundleInstall是全部重新安装，BundleInstall!则是更新
" 一般安装插件的流程为，先BundleSearch一个插件，然后在列表中选中，按i安装
" 安装完之后，在vimrc中，添加Bundle
" 'XXX'，使得bundle能够加载，这个插件，同时如果
" 需要配置这个插件，也是在vimrc中设置即可
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
 
colorscheme molokai

syntax enable
syntax on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set autoindent
set cindent
set smartindent
set smarttab
set number

set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set langmenu=zh_CN.UTF-8
set helplang=cn

set mouse=a
"set selection=exclusive
"set selectmode=mouse,key

set ruler         
set cursorline             

set ignorecase
set hlsearch
set incsearch 

filetype on
filetype plugin on
filetype indent on

"
set completeopt=longest,menu
"
set foldmethod=syntax
set foldlevel=100
"
"nnoremap <silent> <F3> :Grep -r<CR>
let g:EasyGrepMode = 2     " All:0, Open Buffers:1, TrackExt:2, 
let g:EasyGrepCommand = 0  " Use vimgrep:0, grepprg:1
let g:EasyGrepRecursive  = 1 " Recursive searching
let g:EasyGrepIgnoreCase = 0 " not ignorecase:0
let g:EasyGrepFilesToExclude = "*.bak, *~, cscope.*, *.a, *.o, *.pyc, *.bak"

set laststatus=2
set cmdheight=1

"set fillchars=vert:\ ,stl:\ ,stlnc:\

"set showmatch

"set scrolloff=3

set report=0

" set matchtime=1

nmap <F2> :nohlsearch<CR>

" Taglist
let Tlist_Show_One_File=1
let Tlist_Exit_onlyWindow=1

" Nerd Tree
let g:NERDTree_title='NERD Tree'  
function! NERDTree_Start()  
    exec 'NERDTree'  
endfunction  
      
function! NERDTree_IsValid()  
    return 1  
endfunction

" WinManager
let g:winManagerWidth=35
let g:winManagerWindowLayout='NERDTree|TagList'
nmap wm :WMToggle<cr>:set buftype=<cr>

"set tags=/home/chengz/store/idirector_modify/source/trunk/tags
"set tags=/data5/chengz/OCTEON-SDK/bootloader/u-boot/tags

"cscope
"cs add /home/chengz/store/idirector_add_gtpv2/source/trunk/cscope.out /home/chengz/store/idirector_add_gtpv2/source/trunk
"cs add /home/chengz/store/idirector/source/trunk/cscope.out /home/chengz/store/idirector/source/trunk

"nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
