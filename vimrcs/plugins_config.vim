"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important: 
"       This requries that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => Load vundle paths
""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
let path='~/.vim/bundle'
call vundle#begin(path)

" Vundle {

    " Deps {
        " Let vundle manage itself
        Plugin 'gmarik/Vundle.vim'

        " tlib: Some utility functions for VIM
        Plugin 'tomtom/tlib_vim'
    " }

    " General {
        " Solarized Colorscheme for Vim
        Plugin 'altercation/vim-colors-solarized'

        " The NERD tree
        Plugin 'scrooloose/nerdtree'

        " vim-airline
        " Plugin 'bling/vim-airline'

        " lightline (replace to vim-airline)
        Plugin 'itchyny/lightline.vim'

        " surround.vim
        Plugin 'tpope/vim-surround'

        " vim-autoclose
        Plugin 'Townk/vim-autoclose'

        " ctrlp.vim
        Plugin 'kien/ctrlp.vim'

        "ctrlp-funky
        Plugin 'tacahiroy/ctrlp-funky'

        " vim-multiple-cursors
        Plugin 'kristijanhusak/vim-multiple-cursors'

        " sessionman.vim
        Plugin 'vim-scripts/sessionman.vim'

        " matchit.zip
        Plugin 'matchit.zip'

        " vim-bufferline
        Plugin 'bling/vim-bufferline'

        " EasyMotion
        Plugin 'Lokaltog/vim-easymotion'

        " vim-nerdtree-tabs
        Plugin 'jistr/vim-nerdtree-tabs'

        " vim-colorschemes
        Plugin 'flazz/vim-colorschemes'

        " undotree.vim
        Plugin 'mbbill/undotree'

        " Indent Guides
        Plugin 'nathanaelkane/vim-indent-guides'

        " vimproc
        Plugin 'Shougo/vimproc.vim', {'do' : 'make'}

    " }

    " Writing {
        " textobj-user
        Plugin 'kana/vim-textobj-user'

        " vim-litecorrect
        Plugin 'reedes/vim-litecorrect'

        " vim-textobj-sentence
        Plugin 'reedes/vim-textobj-sentence'

        " vim-textobj-quote
        Plugin 'reedes/vim-textobj-quote'

        " vim-wordy
        Plugin 'reedes/vim-wordy'

        " VOom
        Plugin 'VOom'

        " Goyo
        Plugin 'junegunn/goyo.vim'

        " vim-zenroom2
        Plugin 'amix/vim-zenroom2'
    " }

    " General Programming {
        " Syntastic
        Plugin 'scrooloose/syntastic'

        " fugitive.vim
        Plugin 'tpope/vim-fugitive'

        " WebAPI.vim
        Plugin 'mattn/webapi-vim'

        " Gist.vim
        Plugin 'mattn/gist-vim'

        " The NERD Commenter
        Plugin 'scrooloose/nerdcommenter'

        " commentary.vim
        Plugin 'tpope/vim-commentary'

        " Tabular
        Plugin 'godlygeek/tabular'

        if executable('ctags')
            " Tagbar
            Plugin 'majutsushi/tagbar'
        endif
    " }

    " Snippets & AutoComplete {
        " neocomplcache
        Plugin 'Shougo/neocomplcache'

        " neosnippet.vim
        Plugin 'Shougo/neosnippet'

        " neosnippet-snippets
        Plugin 'Shougo/neosnippet-snippets'

        " vim-snippets
        Plugin 'honza/vim-snippets'

        " SuperTab
        Plugin 'ervandew/supertab'

        " YANG Model Support
        Plugin 'nathanalderson/yang.vim'
    " }

    " Python {
        " python-mode
        Plugin 'klen/python-mode'

        " python.vim
        Plugin 'yssource/python.vim'

        " PYTHON_MATCH
        Plugin 'python_match.vim'

        " pythoncomplete
        Plugin 'pythoncomplete'
    " }

    " Rust {
        " rust.vim
        Plugin 'rust-lang/rust.vim'

        " Racer support for Vim
        Plugin 'racer-rust/vim-racer'
    " }

    " Web {
        " Js beautify
        Plugin 'maksimr/vim-jsbeautify'

        " Typescript Highlight
        Plugin 'leafgarland/typescript-vim'

        " Tsuquyomi
        Plugin 'Quramy/tsuquyomi'
    " }

    " Pandoc {
        " vim-pandoc
        Plugin 'vim-pandoc/vim-pandoc'

        " vim-pandoc-syntax
        Plugin 'vim-pandoc/vim-pandoc-syntax'

        " vim-pandoc-after
        Plugin 'vim-pandoc/vim-pandoc-after'
    " }

    " Misc {
        Plugin 'tpope/vim-markdown'
        Plugin 'spf13/vim-preview'
        Plugin 'tpope/vim-cucumber'
        Plugin 'cespare/vim-toml'
        Plugin 'quentindecock/vim-cucumber-align-pipes'
        Plugin 'saltstack/salt-vim'
    " }

" }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" All of your Plugins must be added before the following line
call vundle#end()            " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Brief help
" :PluginList      - lists configured plugins
" :PluginInstall   - listalls plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Map for vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>pl :PluginList<cr>
map <leader>pi :PluginInstall<cr>
map <leader>pu :PluginUpdate<cr>
map <leader>ps :PluginSearch 
map <leader>pc :PluginClean<cr>
map <leader>pe :e ~/.vim/vimrcs/plugins_config.vim<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let g:NERDTreeDirArrows = 1
let NERDTreeIgnore = ['\.pyc$']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Textobj Sentence
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup textobj_sentence
  autocmd!
  autocmd FileType markdown call textobj#sentence#init()
  autocmd FileType textile call textobj#sentence#init()
  autocmd FileType text call textobj#sentence#init()
augroup END


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Textobj Quote
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup textobj_quote
    autocmd!
    autocmd FileType markdown call textobj#quote#init()
    autocmd FileType textile call textobj#quote#init()
    autocmd FileType text call textobj#quote#init({'educate': 0})
augroup END


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Goyo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>z :Goyo<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext http://amix.dk/blog/post/19678
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ctags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tags=./tags;/,~/.vimtags

" Make tags placed in .git/tags file available in all levels of a repository
let gitroot = substitute(system('git rev-parse --show-toplevel'), '[\n\r]', '', 'g')
if gitroot != ''
let &tags = &tags . ',' . gitroot . '/.git/tags'
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline config (force color)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" enable powerline-fonts
"let g:airline_powerline_fonts=1
" set theme
"let g:airline_theme="luna"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline config (since vim-airline is complicated)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline={
    \ 'mode_map': {'c': 'NORMAL'},
    \ 'active': {
    \   'left': [ ['mode', 'paste'], ['fugitive', 'filename'] ]
    \ },
    \ 'component_function': {
    \   'modified': 'LightLineModified',
    \   'readonly': 'LightLineReadonly',
    \   'fugitive': 'LightLineFugitive',
    \   'filename': 'LightLineFilename',
    \   'fileformat': 'LightLineFileformat',
    \   'filetype': 'LightLineFiletype',
    \   'fileencoding': 'LightLineFileencoding',
    \   'mode': 'LightLineMode'
    \ },
    \ 'separator': {'left': "\ue0b0", 'right': "\ue0b2"},
    \ 'subseparator': {'left': "\ue0b1", 'right': "\ue0b3"}}

function! LightLineModified()
    return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightLineReadonly()
    return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? "\ue0a2" : ''
endfunction

function! LightLineFilename()
    return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
                \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
                \ &ft == 'unite' ? unite#get_status_string() :
                \ &ft == 'vimshell' ? vimshell#get_status_string() :
                \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
                \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

function! LightLineFugitive()
    if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
        let branch = fugitive#head()
        return branch !=# '' ? "\ue0a0" . branch : ''
    endif
    return ''
endfunction

function! LightLineFileformat()
    return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightLineFiletype()
    return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightLineFileencoding()
    return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &fenc) : ''
endfunction

function! LightLineMode()
    return winwidth(0) > 60 ? lightline#mode() : ''
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_python_checkers=['pyflakes']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => PyMode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable if python support not present
if !has('python')
let g:pymode = 0
endif

if isdirectory(expand("~/.vim/bundle/python-mode"))
let g:pymode_lint_checkers = ['pyflakes']
let g:pymode_trim_whitespaces = 0
let g:pymode_options = 0
let g:pymode_rope = 0
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if isdirectory(expand("~/.vim/bundle/ctrlp.vim/"))
let g:ctrlp_working_path_mode = 'ra'
map <C-b> :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }

" On Windows use "dir" as fallback command.
if has('win16') || has('win32') || has('win64')
    let s:ctrlp_fallback = 'dir %s /-n /b /s /a-d'
elseif executable('ag')
    let s:ctrlp_fallback = 'ag %s --nocolor -l -g ""'
elseif executable('ack-grep')
    let s:ctrlp_fallback = 'ack-grep %s --nocolor -f'
elseif executable('ack')
    let s:ctrlp_fallback = 'ack %s --nocolor -f'
else
    let s:ctrlp_fallback = 'find %s -type f'
endif
let g:ctrlp_user_command = {
    \ 'types': {
        \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
        \ 2: ['.hg', 'hg --cwd %s locate -I .'],
    \ },
    \ 'fallback': s:ctrlp_fallback
\ }

if isdirectory(expand("~/.vim/bundle/ctrlp-funky/"))
    " CtrlP extensions
    let g:ctrlp_extensions = ['funky']

    "funky
    nnoremap <Leader>fu :CtrlPFunky<Cr>
endif
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => TagBar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if isdirectory(expand("~/.vim/bundle/tagbar/"))
nnoremap <silent> <leader>tt :TagbarToggle<CR>

" If using go please install the gotags program using the following
" go install github.com/jstemmer/gotags
" And make sure gotags is in your path
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [  'p:package', 'i:imports:1', 'c:constants', 'v:variables',
        \ 't:types',  'n:interfaces', 'w:fields', 'e:embedded', 'm:methods',
        \ 'r:constructor', 'f:functions' ],
    \ 'sro' : '.',
    \ 'kind2scope' : { 't' : 'ctype', 'n' : 'ntype' },
    \ 'scope2kind' : { 'ctype' : 't', 'ntype' : 'n' },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if isdirectory(expand("~/.vim/bundle/vim-fugitive/"))
    nnoremap <silent> <leader>gs :Gstatus<CR>
    nnoremap <silent> <leader>gd :Gdiff<CR>
    nnoremap <silent> <leader>gc :Gcommit<CR>
    nnoremap <silent> <leader>gb :Gblame<CR>
    nnoremap <silent> <leader>gl :Glog<CR>
    nnoremap <silent> <leader>gp :Git push<CR>
    nnoremap <silent> <leader>gr :Gread<CR>
    nnoremap <silent> <leader>gw :Gwrite<CR>
    nnoremap <silent> <leader>ge :Gedit<CR>
    " Mnemonic _i_nteractive
    nnoremap <silent> <leader>gi :Git add -p %<CR>
    nnoremap <silent> <leader>gg :SignifyToggle<CR>
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Neocomplcache
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_enable_auto_delimiter = 1
let g:neocomplcache_max_list = 15
let g:neocomplcache_force_overwrite_completefunc = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
            \ 'default' : '',
            \ 'vimshell' : $HOME.'/.vimshell_hist',
            \ 'scheme' : $HOME.'/.gosh_completions'
            \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns._ = '\h\w*'

" Plugin key-mappings {
    " These two lines conflict with the default digraph mapping of <C-K>
    imap <C-k> <Plug>(neosnippet_expand_or_jump)
    smap <C-k> <Plug>(neosnippet_expand_or_jump)
    "imap <silent><expr><C-k> neosnippet#expandable() ?
                "\ "\<Plug>(neosnippet_expand_or_jump)" : (pumvisible() ?
                "\ "\<C-e>" : "\<Plug>(neosnippet_expand_or_jump)")
    "smap <TAB> <Right><Plug>(neosnippet_jump_or_expand)

    inoremap <expr><C-g> neocomplcache#undo_completion()
    inoremap <expr><C-l> neocomplcache#complete_common_string()
    "inoremap <expr><CR> neocomplcache#complete_common_string()

    function! CleverCr()
        if pumvisible()
            if neosnippet#expandable()
                let exp = "\<Plug>(neosnippet_expand)"
                return exp . neocomplcache#close_popup()
            else
                return neocomplcache#close_popup()
            endif
        else
            return "\<CR>"
        endif
    endfunction

    " <CR> close popup and save indent or expand snippet
    imap <expr> <CR> CleverCr()

    " <CR>: close popup
    " <s-CR>: close popup and save indent.
    inoremap <expr><s-CR> pumvisible() ? neocomplcache#close_popup()"\<CR>" : "\<CR>"
    "inoremap <expr><CR> pumvisible() ? neocomplcache#close_popup() : "\<CR>"

    " <C-h>, <BS>: close popup and delete backword char.
    inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
    inoremap <expr><C-y> neocomplcache#close_popup()
    " <TAB>: completion.
    "inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
    "inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
" }

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
autocmd FileType typescript setlocal completeopt+=menu,preview

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.go = '\h\w*\.\?'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Snippets
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use honza's snippets.
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" Enable neosnippet snipmate compatibility mode
let g:neosnippet#enable_snipmate_compatibility = 1

" For snippet_complete marker.
if !exists("g:spf13_no_conceal")
    if has('conceal')
        set conceallevel=2 concealcursor=i
    endif
endif

" Enable neosnippets when using go
let g:go_snippet_engine = "neosnippet"

" Disable the neosnippet preview candidate window
" When enabled, there can be too much visual noise
" especially when splits are used.
set completeopt-=preview


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UndoTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if isdirectory(expand("~/.vim/bundle/undotree/"))
    nnoremap <Leader>u :UndotreeToggle<CR>
    " If undotree is opened, it is likely one wants to interact with it.
    let g:undotree_SetFocusWhenToggle=1
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Indent Guides
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if isdirectory(expand("~/.vim/bundle/vim-indent-guides/"))
    let g:indent_guides_start_level = 2
    let g:indent_guides_guide_size = 1
    let g:indent_guides_enable_on_vim_startup = 1
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Matchit.zip
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let b:match_ignorecase = 1
