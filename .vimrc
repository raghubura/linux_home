" Just notes
" % helps move between braces, moves across preprocessors too
" [{, ]} move to begining or end of blocks
" gd, gD take to local and global definitions

set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ignorecase          " Do case insensitive matching
set smartcase           " Do smart case matching
set background=dark     " If you use dark background else use set background=light
set nocompatible
"set cursorline
filetype indent plugin on
syntax on               " Shows good syntax based colouring
set laststatus=1        " Always show status line
set shiftwidth=8
set softtabstop=8
"set expandtab
"set shiftwidth=2
set tabstop=8
hi User0 ctermfg=black ctermbg=white guifg=#000000  guibg=#ffffff
hi User1 term=bold cterm=bold gui=bold ctermfg=red   ctermbg=white guifg=#ff0000  guibg=#ffffff
hi User2 term=bold cterm=bold gui=bold ctermfg=green ctermbg=white guifg=#00ff00  guibg=#ffffff
hi User3 term=bold cterm=bold gui=bold ctermfg=blue  ctermbg=white guifg=#0000ff  guibg=#ffffff
hi User4 term=inverse,bold cterm=inverse,bold gui=inverse,bold ctermfg=black ctermbg=white guifg=#000000  guibg=#ffffff
hi User5 term=inverse,bold cterm=inverse,bold gui=inverse,bold ctermfg=red   ctermbg=white guifg=#ff0000  guibg=#ffffff
hi User6 term=inverse,bold cterm=inverse,bold gui=inverse,bold ctermfg=green ctermbg=white guifg=#00ff00  guibg=#ffffff
hi User7 term=inverse,bold cterm=inverse,bold gui=inverse,bold ctermfg=blue  ctermbg=white guifg=#0000ff  guibg=#ffffff

set t_Co=256

"source ~/.vimcolors

hi MatchParen ctermbg=132 guibg=#ffaaaa
"set statusline=\ %F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\[HEX=\%02.2B]\ [Line=%04l]\[Col=%04v][%p%%]\ [TOT_LINES=%L]
"set statusline=%3*%f%m%r%h%w\ %0*\ \ %=%3*[ASCII=\%03.3b]\[HEX=\%02.2B]\ [%{&ff},%Y]\ [%4v,\ %0*%4l%3*/%L]\ %P'
set statusline=%3*%f%m%r%h%w\ %0*\ \ %=%3*\ [\0\x\%02.2B\,\%03.3b]\ [%{&ff},%Y]\ [%4v,\ %0*%4l%3*/%L]\ %P'

hi ColorColumn ctermbg=232 guibg=#111111
" hi ColorColumn ctermbg=0 guibg=#000011
" let &colorcolumn=join(range(9,999,8),",")
let &colorcolumn=100
" let &colorcolumn="80,".join(range(100,999,10),",")
" hi ColorColumn ctermbg=232 guibg=#111111
" let &colorcolumn="81,".join(range(101,999),",")
" let &colorcolumn=join(range(100,999,1),",")

" Other than ColorColumn, only one custom highlighter could be used (either
" EndSpace xor OverLength xor ...) so we to combine to a single pattern
" hi ComboErr ctermfg=88 guifg=#773333
" match ComboErr /\(\%101v.\+\)\|\( \+$\)/
" unfortunately this too won't work if bg in ColorColumn affects the same

" highlight tabs or spaces if at end of line
hi EndSpace ctermbg=88 guibg=#773333
match EndSpace /[ \t]\+$/

" highlight when length exceeds limit
" hi OverLength ctermfg=red guifg=#FF0000
" match OverLength /\%101v.\+/

"hi normal ctermfg=195
hi comment ctermfg=74
hi constant ctermfg=214
hi special ctermfg=147
hi type ctermfg=148
hi statement ctermfg=81
hi preproc ctermfg=183

set hidden
set confirm

set wildmenu

" split to right (instead of default left)
set splitright

set number
" hi LineNr ctermbg=232 guibg=#111111 ctermfg=236 guifg=#333333
 hi LineNr ctermbg=232 guibg=#000011 ctermfg=24 guifg=#333333
" hi CursorLineNr ctermbg=233 guibg=#111111 ctermfg=242 guifg=#777777
hi CursorLineNr ctermbg=16 guibg=#000022 ctermfg=31 guifg=#777777

" hi CursorLine cterm=none ctermbg=233 guibg=#111111
hi CursorLine cterm=none ctermbg=17 guibg=#000022
set cursorline

" hi CursorColumn cterm=NONE ctermbg=233 guibg=#111111
" set cursorcolumn
"toggle line highllight with \c
"nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
set hlsearch
" hi Search ctermbg=45 guibg=#77ffff
set backspace=indent,eol,start
set nostartofline
set ruler
set laststatus=2
set visualbell
set t_vb=
set cmdheight=2

" use fold with zc, zo, za, zr, ..., zC, zO, ... (c-close, o-open, a-toggle, r-reduce, ..., caps for all)
set foldmethod=syntax
set foldlevelstart=20
nnoremap <silent> <F7> za

"set mouse=r
"set mouse=v
set mouse=a
"" enable mouse=a to scroll but disable clicks/double-clicks
"nmap <LeftMouse> <nop>
"imap <LeftMouse> <nop>
"vmap <LeftMouse> <nop>
"nmap <2-LeftMouse> <nop>
"imap <2-LeftMouse> <nop>
"vmap <2-LeftMouse> <nop>
"nmap <RightMouse> <nop>
"imap <RightMouse> <nop>
"vmap <RightMouse> <nop>
"nmap <2-RightMouse> <nop>
"imap <2-RightMouse> <nop>
"vmap <2-RightMouse> <nop>

"set notimeout ttimeout ttimeoutlen=4000
set ttimeoutlen=4000
set pastetoggle=<F11>

map Y y$
nnoremap <C-L> :nohl<CR><C-L>

" ca[bbrev] for few tab actions
ca tt tabnew
ca th tabp
ca tn tabn

" source ~/.cscope.vim

if has("cscope")
    set cscopetag cscopeverbose
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
        if filereadable("cscope.out")
                 cs add cscope.out
                         " else add database pointed to by environment
                             elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
endif

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

map <C-n> :tnext<CR>
map <C-p> :tprevious<CR>

" Before sourcing the script do:
"    let g:ctags_path='/path/to/ctags'
"    let g:ctags_args='-I __declspec+'
"        (or whatever other additional arguments you want to pass to ctags)
let g:ctags_title=1	" To show tag name in title bar.
let g:ctags_statusline=1	" To show tag name in status line.
let generate_tags=1	" To start automatically when a supported
			" file is opened.
map <S-F5> :CTAGS

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" look for tags in the current folder; if not found find in parents till /
set tags=./tags;/

" look for cscope in the current folder; if not found find in parents till /
function! LoadCscope()
	let db = findfile("cscope.out", ".;")
	if (!empty(db))
		let path = strpart(db, 0, match(db, "/cscope.out$"))
		set nocscopeverbose " suppress 'duplicate connection' error
		exe "cs add " . db . " " . path
		set cscopeverbose
	endif
endfunction
au BufEnter /* call LoadCscope()


" Toggle plugin to show/hide tags corresponding to this file; this plugin
" navigates too
nnoremap <silent> <F9> :TlistToggle<CR>


" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>


" ctrl+r to initiate substitution of visually selected text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" From http://stackoverflow.com/questions/597687/changing-variable-names-in-vim
" For local scope replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
" For global scope replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

" " omnicomplete
" filetype plugin on
" set omnifunc=syntaxcomplete#Complete
" " don't show the preview window
" set completeopt-=preview
" completion menu doesn't fill the first word instead just the longest common
" and the menu shows up even for one matching item
" set completeopt=longest,menuone

" " omnicomplete slightly easier with ctrl+space; may not work
" inoremap <Nul> <C-x><C-o>
" inoremap <C-Space> <C-x><C-o>
" inoremap <C-@> <C-Space>

" using supertab plugin
" let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
" let g:SuperTabDefaultCompletionType = "context"

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<C-g>u\<Tab>"

let g:clang_user_options='|| exit 0'

let g:AutoComplPop_Behavior = {
\ 'c': [ {'command' : "\<C-x>\<C-o>",
\       'pattern' : ".",
\       'repeat' : 0}
\      ]
\}
let g:AutoComplPop_CompleteoptPreview = 1

" " syntastic requires pathogen
" execute pathogen#infect()
" 
" " syntastic uses these status regions
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" " syntastic settings
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" NerdTree
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

hi SearchCur ctermbg=88 guibg=#77ffff
hi GrayBg ctermbg=237 guibg=#777777
hi JustUnderline ctermbg=NONE ctermfg=NONE cterm=underline
" hi JustUnderline cterm=underline
" au CursorMoved * exe printf('match JustUnderline /\V\<%s\>/', escape(expand('<cword>'), '/\'))
" au CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))
set updatetime=3000
function! HighlightWordUnderCursor()
	let esc_cword = escape(expand('<cword>'), '/\')
	if getline(".")[col(".")-1] !~# '[[:punct:][:blank:]]'
		if getline(".") =~ '[ \t]\+$'
			" highlight tabs or spaces if at end of line		  
			exec 'match' 'EndSpace' '/[ \t]\+$/'
			"'/\%'.line(".").'l[ \t]\+$/'
		elseif (@/=="" || @/!~esc_cword)
			exec '2match' 'GrayBg' '/\%'.line(".").'l\V\<'.esc_cword.'\>/'
			exec 'match' 'JustUnderline' '/\%<'.line(".").'l\V\<'.esc_cword.'\>\|\%>'.line(".").'l\V\<'.esc_cword.'\>/'
		elseif @/=~expand('<cword>')
			exec '2match' 'SearchCur' '/\%'.line(".").'l\V\<'.esc_cword.'\>/'
		endif
	else
		" exec '2match' 'GrayBg' '/\%'.line(".").'l\V\<'.esc_cword.'\>/'
		match none
	endif
endfunction
au! CursorHold,CursorHoldI * call HighlightWordUnderCursor()

" When the cursor is hold on a word, that word is highlighted.
" When the cursor is moving, the highlight is hidden
" set updatetime=10
" au! CursorMoved * set nohlsearch
" au! CursorHold * set hlsearch | let @/='\<'.expand("<cword>").'\>'
" set hlsearch

" see colors on a new vim file with
" :so $VIMRUNTIME/syntax/hitest.vi
" :so ~/.vim/color_demo.vim

" colorscheme solarized


command! -nargs=1 Function call s:Function(<f-args>)
function! s:Function(name)
  " Retrieve tags of the 'f' kind
  let tags = taglist('^'.a:name)
  let tags = filter(tags, 'v:val["kind"] == "f"')

  " Prepare them for inserting in the quickfix window
  let qf_taglist = []
  for entry in tags
    call add(qf_taglist, {
          \ 'pattern':  entry['cmd'],
          \ 'filename': entry['filename'],
          \ })
  endfor

  " Place the tags in the quickfix window, if possible
  if len(qf_taglist) > 0
    call setqflist(qf_taglist)
    copen
  else
    echo "No tags found for ".a:name
  endif
endfunction

function! LoadCCTree()
  if filereadable('cscope.out')
    CCTreeLoadDB cscope.out
  endif
endfunc
" Use this when required; loading cscope.out may take minutes even for wl/sys
" autocmd VimEnter * call LoadCCTree()

" disable syntax highlight for very large files (>800K)
autocmd Filetype * if getfsize(@%) > 400000 | setlocal syntax=OFF | endif
" use ctrl-^ == ctrl-shift-6 to enable for that large file after loading when  bored of monochrome
map <C-^> :setlocal syntax=on<CR><ESC>
