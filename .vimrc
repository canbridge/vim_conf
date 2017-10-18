"set completeopt=menu 	      " 设置之后一些修改就可以生效，比如 let g:pymode_doc = 0
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 Plugin 'gmarik/vundle'
Plugin 'fatih/vim-go'

""" 安装PluginInstall
 " The following are examples of different formats supported.
 " Keep Plugin commands between here and filetype plugin indent on.
 " scripts on GitHub repos
Bundle 'https://github.com/easymotion/vim-easymotion.git'
Bundle 'https://github.com/klen/python-mode.git'
Bundle 'https://github.com/scrooloose/nerdtree.git'
Bundle 'https://github.com/vim-scripts/taglist.vim.git'
"""Bundle 'https://github.com/mattn/emmet-vim.git'



"""pythonmode -config begin ============================
let g:pymode_indent = 1
let g:pymode_folding = 1
nnoremap <space> za  ""结合PYTHON_MODE 做到空格折叠

let g:pymode_doc = 0
let g:pymode_doc_bind = 'K'

let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 0

let g:pymode_lint_checkers = ['pep8']  ""风格检查，pylint，pyflakes，pep8
"let g:pymode_lint_checkers = ['pyflakes', 'pep8']  ""风格检查，pylint，pyflakes，pep8
let g:pymode_options_max_line_length = 128 
let g:pymode_trim_whitespaces = 1  ""保存时去除无用的空格
let g:pymode_lint_ignore = ["E722", "C901"]   "" 忽略 E722 
"""pythonmode -config end ============================


""taglist start-----------------------
noremap <F2> :TlistToggle<CR>
let Tlist_Show_One_File=1    "只显示当前文件的tags
let Tlist_WinWidth=40        "设置taglist宽度
let Tlist_Exit_OnlyWindow=1  "tagList窗口是最后一个窗口，则退出Vim
let Tlist_Use_Right_Window=1 "在Vim窗口右侧显示taglist窗口
"taglist end ------------------------------------
"

""easymotion start ------------------------------------
 map  <Leader>f <Plug>(easymotion-bd-f)
 nmap <Leader>f <Plug>(easymotion-overwin-f)
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
map <Leader>j <Plug>(easymotion-j)
nmap <Leader>k <Plug>(easymotion-k)
""easymotion end ------------------------------------

"nerdtree start ---------------------------------------
map <F1> :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"nerdtree end ------------------------------------------


"solarized start----------------------------------------
syntax enable
set background=dark
colorscheme desert 
"colorscheme solarized
"solarized end----------------------------------------


"非插件配置
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"""所在的地方有一个竖线用于对齐
au! CursorMoved * let &cc=col('.')
au! CursorMovedI * let &cc=col('.')

set hlsearch
set novisualbell

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=gb2312
set termencoding=utf-8
set tabstop=4 "设置Tab显示的宽度，Python建议设置成4"
set shiftwidth=4 "这个量是每行的缩进深度，一般设置成和tabstop一样的宽度"
set expandtab
