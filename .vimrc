set nocompatible
set encoding=utf-8
let python_highlight_all=1

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
"Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'pearofducks/ansible-vim'

call vundle#end()
filetype plugin indent on

set foldmethod=indent
set foldlevel=99
" map space for folding
nnoremap <space> za

" Docstring preview
let g:SimpylFold_docstring_preview=1

" PYTHON!!!! Deep shit...
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" Handle Html/CSS/Js shit
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" Flagg unnecessary white space
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"    project_base_dir = os.environ['VIRTUAL_ENV']
"    #activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"    #execfile(activate_this, dict(__file__=activate_this))
"EOF

syntax on
set background=dark
"colorscheme solarized
colorscheme industry
set nu
let g:ansible_unindent_after_newline = 1
set paste
set ai
au BufRead,BufNewFile */ansible/*.yml set filetype=ansible
