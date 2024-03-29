""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"      _   _ _  __
"     | \ | | |/ /                  by Night-King 
"     |  \| | ' /                   =>feel free to edit to fit your own needs
"     | |\  | . \                   t.me/@chill_Vibez
"     |_| \_|_|\_\

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader key.
let mapleader = "," 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


set nocompatible              " be iMproved, required
filetype off                  " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'
" Automatic reloading of .Vimrc
autocmd! bufwritepost .vimrc source % 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-Plug For Managing Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')



"{{ The Basics }}"
    Plug 'townk/vim-autoclose'                         " Autoclose
    Plug 'gmarik/Vundle.vim'                           " Vundle
    Plug 'itchyny/lightline.vim'                       " Lightline statusbar
    Plug 'frazrepo/vim-rainbow'
    Plug 'wakatime/vim-wakatime'
    Plug 'Eliot00/git-lens.vim'
    Plug 'junegunn/goyo.vim', {'for': 'markdown' }
   Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    Plug 'dhruvasagar/vim-table-mode'
    Plug 'mhinz/vim-startify'
"{{ File management }}
    Plug 'vifm/vifm.vim'                               " Vifm
    Plug 'scrooloose/nerdtree'                         " Nerdtree
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'     " Highlighting Nerdtree
    Plug 'ryanoasis/vim-devicons'                      " Icons for Nerdtree
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-fugitive'
"{{ Productivity }}
    Plug 'brooth/far.vim'
    Plug 'vimwiki/vimwiki'                             " VimWiki 
"{{ Syntax Highlighting and Colors }}
    Plug 'kovetskiy/sxhkd-vim'                         " sxhkd highlighting
    Plug 'vim-python/python-syntax'                    " Python highlighting
"{{ LSP }
     Plug 'prabirshrestha/asyncomplete.vim'
     Plug 'prabirshrestha/vim-lsp'
     Plug 'mattn/vim-lsp-settings'
     Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()

" VUNDLE PACKAGE MANAGER 

call vundle#begin()

" Let Vundle Manage Itself 
Plugin 'VundleVim/Vundle.vim'

" Plugins 
Plugin 'jiangmiao/auto-pairs'
Plugin 'tibabit/vim-templates'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'


call vundle#end()


filetype plugin indent on    " required



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set path+=**					" Searches current directory recursively.
set wildmenu					" Display all matches when tab complete.
set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open
set nobackup                    " No auto backups
set noswapfile                  " No swap
set t_Co=256                    " Set if term supports 256 colors.
set number relativenumber       " Display line numbers
set clipboard=unnamedplus       " Copy/paste between vim and other programs.
syntax enable
let g:rehash256 = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => Status Line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The lightline.vim theme
let g:lightline = {
      \ 'colorscheme': 'darcula',
      \ }

" Always show statusline
set laststatus=2

" Uncomment to prevent non-normal modes showing in powerline and below powerline.
set noshowmode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab                   " Use spaces instead of tabs.
set smarttab                    " Be smart using tabs ;)
set shiftwidth=4                " One tab == four spaces.
set tabstop=4                   " One tab == four spaces.


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight LineNr           ctermfg=8    ctermbg=none    cterm=none
highlight CursorLineNr     ctermfg=7    ctermbg=8       cterm=none
highlight VertSplit        ctermfg=0    ctermbg=8       cterm=none
highlight Statement        ctermfg=2    ctermbg=none    cterm=none
highlight Directory        ctermfg=4    ctermbg=none    cterm=none
highlight StatusLine       ctermfg=7    ctermbg=8       cterm=none
highlight StatusLineNC     ctermfg=7    ctermbg=8       cterm=none
highlight NERDTreeClosable ctermfg=2
highlight NERDTreeOpenable ctermfg=8
highlight Comment          ctermfg=4    ctermbg=none    cterm=italic
highlight Constant         ctermfg=12   ctermbg=none    cterm=none
highlight Special          ctermfg=4    ctermbg=none    cterm=none
highlight Identifier       ctermfg=6    ctermbg=none    cterm=none
highlight PreProc          ctermfg=5    ctermbg=none    cterm=none
highlight String           ctermfg=12   ctermbg=none    cterm=none
highlight Number           ctermfg=1    ctermbg=none    cterm=none
highlight Function         ctermfg=1    ctermbg=none    cterm=none
" highlight WildMenu         ctermfg=0       ctermbg=80      cterm=none
highlight Folded           ctermfg=103     ctermbg=234     cterm=none
highlight FoldColumn       ctermfg=103     ctermbg=234     cterm=none
" highlight DiffAdd          ctermfg=none    ctermbg=23      cterm=none
" highlight DiffChange       ctermfg=none    ctermbg=56      cterm=none
" highlight DiffDelete       ctermfg=168     ctermbg=96      cterm=none
" highlight DiffText         ctermfg=0       ctermbg=80      cterm=none
" highlight SignColumn       ctermfg=244     ctermbg=235     cterm=none
" highlight Conceal          ctermfg=251     ctermbg=none    cterm=none
highlight SpellBad         ctermfg=168     ctermbg=none    cterm=underline
highlight SpellCap         ctermfg=80      ctermbg=none    cterm=underline
highlight SpellRare        ctermfg=121     ctermbg=none    cterm=underline
highlight SpellLocal       ctermfg=186     ctermbg=none    cterm=underline
" highlight Pmenu            ctermfg=251     ctermbg=234     cterm=none
" highlight PmenuSel         ctermfg=0       ctermbg=111     cterm=none
" highlight PmenuSbar        ctermfg=206     ctermbg=235     cterm=none
" highlight PmenuThumb       ctermfg=235     ctermbg=206     cterm=none
" highlight TabLine          ctermfg=244     ctermbg=234     cterm=none
" highlight TablineSel       ctermfg=0       ctermbg=247     cterm=none
" highlight TablineFill      ctermfg=244     ctermbg=234     cterm=none
" highlight CursorColumn     ctermfg=none    ctermbg=236     cterm=none
" highlight CursorLine       ctermfg=none    ctermbg=236     cterm=none
" highlight ColorColumn      ctermfg=none    ctermbg=236     cterm=none
" highlight Cursor           ctermfg=0       ctermbg=5       cterm=none
" highlight htmlEndTag       ctermfg=114     ctermbg=none    cterm=none
" highlight xmlEndTag        ctermfg=114     ctermbg=none    cterm=none

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VimWiki
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

nnoremap <leader>t :call VimwikiSearchTagsPrompt()<CR>
function! VimwikiSearchTagsPrompt()
  " Ask the user for the tags to search for
 let tags = input("Search For: ")
  " If the user cancels the input, return
  if tags == ""
   return
  endif
  " Call :VimwikiSearchTags with the user-provided tags
  execute ":VimwikiSearchTags " . tags
endfunction
nnoremap <leader>r :VimwikiRebuildTags<CR>
nnoremap <leader>2 :lnext<CR>
nnoremap <leader>1 :lprevious<CR>
nnoremap <leader>o :lopen<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Startify 

let g:startify_custom_header = [
 \'____   ____.__         ',
 \'\   \ /   /|__| _____  ',
 \' \   Y   / |  |/     \ ',
 \'  \     /  |  |  Y Y  \ ',
 \'   \___/   |__|__|_|  /',
 \'                    \/ ',
\]

let g:startify_bookmarks = [
  \ { 'w': '~/vimwiki/index.md' },
  \ { 'v': '~/.vimrc' }
  \ ]

let g:startify_lists = [
      \ { 'header': ['   Bookmarks'],       'type': 'bookmarks' },
      \ { 'header': ['   Recent'],            'type': 'files' },
      \ ]

nmap <c-n> :Startify<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse Scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=nicr

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright


" Removes pipes | that act as seperators on splits
set fillchars+=vert:\ 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other Stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:python_highlight_all = 1
let g:GIT_LENS_ENABLED = 1 

au! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
au BufEnter *.org            call org#SetOrgFileType()

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

""""""""""""""""""""""""""""""""""""""
"=> ClipBoard
set clipboard=unnamed
"""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""
"Goyo Functions 

function! s:goyo_enter()
    set linebreak 
    set spell spelllang=en_us
endfunction 

function! s:goyo_leave()
    set nolinebreak
    set nospell
endfunction

autocmd! User GoyoLeave nested call <SID>goyo_leave()
autocmd! User GoyoEnter nested call <SID>goyo_enter()
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Ultisnip
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"
""""""""""""""""""""""""""""""""""""""""""""""""
"=> Quick-Save Commands.
"""""""""""""""""""""""""""""""""""""""""""""""""
" Allows you to save using CTRL+Z in visual & Insert mode.
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>     
inoremap <C-Z> <C-O>:update<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""
" Folds
nnoremap <space> za <CR>
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END
""""""""""""""""""""""""""""""""""""""""""""""""

" Quick-Quit Commands.
"""""""""""""""""""""""""""""""
noremap <Leader>e :quit<CR>
noremap <Leader>E :qa!<CR>   
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Bind Ctrl+<movement> keys to move around the windows
map <Leader>j <c-w>j
map <Leader>k <c-w>k
map <Leader>l <c-w>l
map <Leader>h <c-w>h
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Switch between vim sessions 
nnoremap <S-l> :N<CR>
nnoremap <S-k> :n<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Easier Moving Between tabs.
nnoremap <Leader>n <esc>:tabprevious<CR>
nnoremap <Leader>m <esc>:tabnext<CR>
nnoremap <Leader>b <esc>:tabnew<CR>
"""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""
" EXTENSION'S Shortuct
nnoremap <Leader>q :TemplateInit<CR>                    
nnoremap <Leader>s :NERDTreeToggle<CR>                  
nnoremap <Leader>g :Goyo<CR>                           
nnoremap <Leader>p :MarkdownPreview<CR>                 
nnoremap <leader>ps :MarkdownPreviewStop<CR>           
nnoremap <c-f> :Files<CR>
nnoremap <c-b> :Buffers<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Sort Function
vnoremap <Leader>S :sort<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving Code-Blocks
vnoremap < <gv 
vnoremap > >gv
"""""""""""""""""""""""""""""""""""""""""""""""""'
highlight LineNr ctermfg=white
