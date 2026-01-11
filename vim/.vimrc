" .vimrc

" Configuración general
set title " Muestra el nombre del archivo en la ventana de la terminal
set number " Muestra los números de las líneas
set nowrap " No dividir la línea si es muy larga
set cursorline " Resalta la línea actual
set colorcolumn=120 " Muestra la columna límite a 120 caracteres
set nocompatible " Desactiva modo compatible
filetype plugin on " Habilita plugin para tipos de archivos
syntax on " Activa resaltado de sintaxis

" Indentación a 2 espacios
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab " Insertar espacios en lugar de <Tab>s

"
" PLUGINS: https://github.com/junegunn/vim-plug
"

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
" fzf: https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Challenger-deep-theme: https://github.com/challenger-deep-theme/vim
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
" lightline.vim: https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'
" NERDTree: https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree'
" vimwiki: https://github.com/vimwiki/vimwiki
Plug 'vimwiki/vimwiki'
" Initialize plugin system
call plug#end()

"
" Theme Configuration ---
"

" Enable true color support for terminal Vim
if has('termguicolors')
  set termguicolors
endif

" Check if the challenger_deep colorscheme file is available
if filereadable(expand('~/.vim/./plugged/challenger-deep/colors/challenger_deep.vim'))
  " If found, set the colorscheme
  colorscheme challenger_deep
else
  " If not found, fall back to a default colorscheme and provide a message
  colorscheme default
  echomsg "Challenger Deep theme not found, using default."
endif

" Lightline Configuration"
set laststatus=2
let g:lightline = { 'colorscheme': 'challenger_deep'}