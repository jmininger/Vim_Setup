execute pathogen#infect()

syntax on
colorscheme brogrammer 
filetype plugin indent on

autocmd FileType go set number fo+=croq tw=100
autocmd Filetype go set makeprg=go\ build\ .

set relativenumber
set hlsearch
set ignorecase

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_function_arguments = 1
let g:go_highlight_types = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_fields = 1
let g:go_auto_type_info = 1
let g:go_metalinter_autosave = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_cpp_checkers = ['clang_check', 'clang_tidy'] 

let g:syntastic_python_checkers = ['flake8']

let g:python_highlight_all = 1

set number

set clipboard=unnamed
set tw=79
"set colorcolumn=80
"highlight ColorColumn ctermbg=233

" Moving between splits without ctrl-w first
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:pymode_lint_on_write = 0
set autoindent
set smartcase

nmap <F8> :TagbarToggle<CR>

nmap oo o<Esc>k
nmap OO O<Esc>j

let g:jedi#completions_enabled = 0

set rtp+=/usr/local/opt/fzf
