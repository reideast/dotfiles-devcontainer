" vimrc by Andrew Reid East (Starting 180118)
" For use with neovim (macos), but backwards compatible with vim
" install neovim with homebrew `brew install neovim`

" Init Pathogen VIM plugin manager
" See: https://github.com/tpope/vim-pathogen
" If not installed, can get it through curl via ~/.dotfiles/make-vim-pathogen.sh
" execute pathogen#infect()
" TODO: Package manager Pathogen does not work with Neovim?

" code syntax highlighting
syntax on

" set indent to 4 spaces
" filetype plugin indent on " TODO: need this for Neovim?
set tabstop=4 " set tabs to 4 spaces
set softtabstop=4 " controls spaces w/in tabs while editing
set shiftwidth=4 " controls what happens when you indent with {>}
set expandtab " controls what happens when you press {tab}
set autoindent
set copyindent " controls if indents are copied from previous line
set breakindent " indent wrapped lines
set linebreak " don't break words

" search in case-insensitive if search is entirely lowercase
set ignorecase
set smartcase
" search incrementally, i.e. start showing matches while typing
set incsearch

" line numbers
set number

" After search (while in Normal mode), hit <space> to clear highlighting
" :nnoremap <silent> <CR> :nohlsearch<CR>
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Swap functionality of 0 vs ^. It's just faster to hit 0 to go to line home!
noremap 0 ^
noremap ^ 0

" 'Krack' a line in half AKA split line before cursor
" See: https://stackoverflow.com/questions/624821/vim-split-line-command
" Note: Overrides "lookup man page" that's mapped to K
map K i<Enter><Esc>

" Insert a blank line (without editing it) with <Ctrl+J> or <Ctrl+K> for above
" See: https://vim.fandom.com/wiki/Insert_newline_without_entering_insert_mode
" Uses a mark (p) to jump back to same place in line after insert
nnoremap <C-J> mpo<Esc>`p
nnoremap <C-K> mpO<Esc>`p
" This version doesn't return to the cursor's place in the line after insert
" nnoremap <S-Enter> O<Esc>
" nnoremap <CR> o<Esc>


" Provide a home row alternate to <Esc> in Insert mode: kj
" See: https://vim.fandom.com/wiki/Avoid_the_escape_key or https://vi.stackexchange.com/questions/16963/remap-esc-key-in-vim
" Downside: typing any k will be momentarily delayed: either until another key (not j) is pressed, or until timeout (default 1s) see: http://vimdoc.sourceforge.net/htmldoc/options.html#'timeout'
" inoremap kj <Esc>
" For Command mode, esc won't work so have to use Ctrl+C
" cnoremap kj <C-C>

" 'If your '{' or '}' are not in the first column, and you would like to use "[[" and "]]" anyway, try these mappings:'
" :map [[ ?{<CR>w99[{
" :map ][ /}<CR>b99]}
" :map ]] j0[[%/{<CR>
" :map [] k$][%?}<CR>


" Set which non-printing characters to display
set listchars=eol:$,tab:>·,trail:~,extends:>,precedes:<,space:·
" Alternative characters: set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
" To show `:set list`
" To hide `:set nolist`

" persist the undo tree for each file
" See: https://begriffs.com/posts/2019-07-19-history-use-vim.html
set undofile
set undodir^=~/.vim/undo//

