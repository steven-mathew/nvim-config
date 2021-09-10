"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/


" General Settings

source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/signify.vim
source $HOME/.config/nvim/vim-plug/plugins.vim

"source $HOME/.config/nvim/stausline.vim

"source $HOME/.config/nvim/colors/firewatch.vim
"source $HOME/.config/nvim/colors/
"source $HOME/.config/nvim/autoload/plugged/vim-airline-themes/autoload/airline/themes/zenburn.vim
"source $HOME/.config/nvim/themes/gruvbox.vim
" turn hybrid line numbers on
set number relativenumber
set nu rnu
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set nobackup
set smartindent
set noswapfile
set nowrap
set relativenumber
set ignorecase
set smartcase
set nohlsearch
set hidden
set colorcolumn=80
"set signcolumn=yes


set updatetime=50


"if &term =~ '256color'
  "set t_ut=
"endif
if has("termguicolors")     " set true colors
    set t_8f=\[[38;2;%lu;%lu;%lum
    set t_8b=\[[48;2;%lu;%lu;%lum
    set termguicolors
endif
" Better nav for omnicomplete TODO figure out why this is being overridden
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
" Your .vimrc

" Trigger a highlight in the appropriate diion when pressing these keys:
"let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

 " let g:syntastic_python_python_exec = 'python3'
 " let g:syntastic_python_checkers = ['python']
" Trigger a highlight only when pressing f and F.
" let g:qs_highlight_on_keys = ['f', 'F']
"nmap <F8> :NERDTreeToggle<CR>
" Your .vimrc
highlight QuickScopePrimary guifg='#8be9fd' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#ff79c6' gui=underline ctermfg=81 cterm=underline

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
"set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

syntax on
highlight Normal guibg=none
highlight NonText guibg=none
" highlight LineNr guibg=none 

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  endif
endfunction

highlight EndOfBuffer guibg=NONE ctermbg=NONE

" map Ctrl+n to toggling the NERD Tree
map <C-n> :NERDTreeToggle<CR>
