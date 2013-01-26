execute pathogen#infect()

syntax on
let mapleader=","

"" use spaces instead of tabs
set tabstop=4
set shiftwidth=4
set expandtab
set shiftround

"" better window movement
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"" unix files are better
set fileformat=unix
set filetype=unix

"turn off beeping and flashing
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

""""""""""""""""""""""


highlight Search   ctermfg=NONE  ctermbg=magenta guifg=NONE    guibg=yellow

set noautoindent
set autowrite
set nobackup
set nobinary
set noexrc
set hidden
set hlsearch
set ignorecase
set incsearch
set infercase
set joinspaces
set ruler
set secure
set shortmess=at
set number
set noshowmatch
set nosmartindent
set smartcase
set textwidth=0
set ttyfast
set undolevels=200
set wrapmargin=0
set wrapscan
set nowritebackup
set matchpairs+=<:>
set wildmode=list:full

"" Show character undercursor
set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P
"" always show status line
set laststatus=2


"" move blocks of code around
"nnoremap <C-j> :m+<CR>==
"nnoremap <C-k> :m-2<CR>==
"inoremap <C-j> <Esc>:m+<CR>==gi
"inoremap <C-k> <Esc>:m-2<CR>==gi
"vnoremap <C-j> :m'>+<CR>gv=gv
"vnoremap <C-k> :m-2<CR>gv=gv

set nocompatible

" Font / colors
colorscheme desert 

" Twig template syntax
au BufRead,BufNewFile *.tml set filetype=htmldjango


set iskeyword=a-z,A-Z,48-57,_

" Show buffer list.
map + :buffers<CR>

" Cycle forward and backward through buffers.
map <C-N> :bn<CR>
map <C-P> :bp<CR>


" Turns of highsearch, once I've found what I'm looking for.
map ` :nohls<C-M>


set shellcmdflag=-ic

"delete the buffer; keep windows; create a scratch buffer if no buffers left
" credit: http://vim.wikia.com/wiki/Deleting_a_buffer_without_closing_the_window
function s:Kwbd(kwbdStage)
  if(a:kwbdStage == 1)
    if(!buflisted(winbufnr(0)))
      bd!
      return
    endif
    let s:kwbdBufNum = bufnr("%")
    let s:kwbdWinNum = winnr()
    windo call s:Kwbd(2)
    execute s:kwbdWinNum . 'wincmd w'
    let s:buflistedLeft = 0
    let s:bufFinalJump = 0
    let l:nBufs = bufnr("$")
    let l:i = 1
    while(l:i <= l:nBufs)
      if(l:i != s:kwbdBufNum)
        if(buflisted(l:i))
          let s:buflistedLeft = s:buflistedLeft + 1
        else
          if(bufexists(l:i) && !strlen(bufname(l:i)) && !s:bufFinalJump)
            let s:bufFinalJump = l:i
          endif
        endif
      endif
      let l:i = l:i + 1
    endwhile
    if(!s:buflistedLeft)
      if(s:bufFinalJump)
        windo if(buflisted(winbufnr(0))) | execute "b! " . s:bufFinalJump | endif
      else
        enew
        let l:newBuf = bufnr("%")
        windo if(buflisted(winbufnr(0))) | execute "b! " . l:newBuf | endif
      endif
      execute s:kwbdWinNum . 'wincmd w'
    endif
    if(buflisted(s:kwbdBufNum) || s:kwbdBufNum == bufnr("%"))
      execute "bd! " . s:kwbdBufNum
    endif
    if(!s:buflistedLeft)
      set buflisted
      set bufhidden=delete
      set buftype=nofile
      setlocal noswapfile
    endif
  else
    if(bufnr("%") == s:kwbdBufNum)
      let prevbufvar = bufnr("#")
      if(prevbufvar > 0 && buflisted(prevbufvar) && prevbufvar != s:kwbdBufNum)
        b #
      else
        bn
      endif
    endif
  endif
endfunction

command! Kwbd call <SID>Kwbd(1)
nnoremap <silent> <Plug>Kwbd :<C-u>Kwbd<CR>

" Create a mapping (e.g. in your .vimrc) like this:
nmap Q <Plug>Kwbd
