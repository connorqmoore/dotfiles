set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-pathogen'
Plugin 'tpope/vim-fugitive'
Plugin 'ervandew/supertab'
Plugin 'vim-ruby/vim-ruby'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-endwise'



" Now we can turn our filetype functionality back on
filetype plugin indent on

" NERDTree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let  NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']

silent! nmap <F3> :NERDTreeToggle<CR>

" Solarized colorscheme
syntax enable
set background=dark
colorscheme solarized

" PowerLine
let g:Powerline_symbols = 'fancy'

set pastetoggle=<F2>
set number

" EasyMotion
" \\w does search feature

" vim-rails
" lots of features use :find schema.rb to
" get path or :R to change to files 
" :Eview :Econtroller :Elayout

" Tabs
autocmd FileType * set expandtab|set shiftwidth=2|set tabstop=2|retab " default
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab " python


" Map Esc to jk in insert mode
imap fj <Esc>

" Match current file directory to vims default directory
autocmd BufEnter * lcd %:p:h
