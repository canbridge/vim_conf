set nocompatible              " be iMproved, required
filetype off                  " required

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()
 Plugin 'gmarik/vundle'

 " The following are examples of different formats supported.
 " Keep Plugin commands between here and filetype plugin indent on.
 " scripts on GitHub repos
Bundle 'https://github.com/easymotion/vim-easymotion.git'
Bundle 'https://github.com/vim-scripts/taglist.vim.git'
Bundle 'https://github.com/scrooloose/nerdtree.git'
Bundle 'https://github.com/klen/python-mode.git'


" scripts not on GitHub
" git repos on your local machine (i.e. when working on your own plugin)

filetype plugin indent on     " required
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line
"
"

""easymotion start ------------------------------------
 map  <Leader>f <Plug>(easymotion-bd-f)
 nmap <Leader>f <Plug>(easymotion-overwin-f)
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
map <Leader>j <Plug>(easymotion-j)
nmap <Leader>k <Plug>(easymotion-k)


""easymotion start ------------------------------------


"solarized start----------------------------------------
syntax enable
set background=dark
colorscheme solarized
"solarized end----------------------------------------



"nerdtree start ---------------------------------------
map <F2> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"nerdtree end ------------------------------------------


""taglist start-----------------------
noremap <F3> :TlistToggle<CR>
let Tlist_Show_One_File=1    "只显示当前文件的tags
let Tlist_WinWidth=40        "设置taglist宽度
let Tlist_Exit_OnlyWindow=1  "tagList窗口是最后一个窗口，则退出Vim
let Tlist_Use_Right_Window=1 "在Vim窗口右侧显示taglist窗口
"taglist end ------------------------------------
"
"
"
"
"非插件配置
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>



"fold ----------------------------------,结合PYTHON_MODE 做到空格折叠
nnoremap <space> za

set hlsearch
set novisualbell
