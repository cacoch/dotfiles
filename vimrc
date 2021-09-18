
"I know, it's the sin, but, I'm sinner
set mouse=a

" Enable italics in terminal
let g:gruvbox_italic=1

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


" The ultimate snippet solution for VIM 
Plug 'SirVer/ultisnips'


" Some color
Plug 'morhetz/gruvbox'

" latex support
Plug 'lervag/vimtex'

call plug#end()


let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

colorscheme gruvbox
set background=dark

" Hide toolbar in gvim 
if has("gui_running")
   set guioptions -=T
endif


