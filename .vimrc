execute pathogen#infect()
colorscheme desert
:set nu
:set ai
:set cursorline
:set bg=dark
:set tabstop=4
:set shiftwidth=4
:set mouse=a
:set ttymouse=xterm2
:set history=100
:set hlsearch
:set formatoptions+=r
:set autowrite
:set clipboard=unnamed
:set tags=./tags,./TAGS,tags;~,TAGS;~
:inoremap ( ()<Esc>i
:inoremap " ""<Esc>i
:inoremap ' ''<Esc>i
:inoremap [ []<Esc>i
:inoremap {<CR> {<CR>}<Esc>ko
:inoremap {{ {}<ESC>i
filetype indent on
:hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
:hi Search cterm=NONE ctermfg=Black ctermbg=blue
"NERDTree setting"
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
"taglist setting"
map <silent> <F4> :TlistToggle<cr> 
let Tlist_Show_One_File = 1      
let Tlist_Exit_OnlyWindow = 1  
let Tlist_Use_Right_Window = 1
"cscope setting"
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif

:set cscopequickfix=s-,c-,d-,i-,t-,e-

nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"F5 find symbol; F6 find string; F7 find function who used; 
nmap <silent> <F5> :cs find s <C-R>=expand("<cword>")<CR><CR> :botright copen<CR><CR> 
nmap <silent> <F6> :cs find t <C-R>=expand("<cword>")<CR><CR> :botright copen<CR><CR>
"nmap <silent> <F7> :cs find g <C-R>=expand("<cword>")<CR><CR> 
nmap <silent> <F7> :cs find c <C-R>=expand("<cword>")<CR><CR> :botright copen<CR><CR>
"auto load ctags"
if filereadable("tags")
      set tags=tags
endif

"--------------------------------
" QuickFix
"--------------------------------
 nmap <F1> :cn<cr>  " next resault 
 nmap <F2> :cp<cr>  " previous resault
