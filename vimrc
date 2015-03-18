set nocompatible

filetype on

set ruler
set smartcase
set smartindent
set wildmenu
set number
set showmatch
set incsearch
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
syntax on

" set php filetype for *.module files
au BufRead,BufNewFile *.module set filetype=php

" switch the tabs
map <S-Right> :tabnext<CR>
map <S-Left> :tabprevious<CR>

" taglist specific settings
nnoremap <F12> :TlistToggle<CR>
let Tlist_Close_On_Select=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Sort_Type="name"
let Tlist_Compact_Format=1
let tlist_php_settings='php;f:function'
let Tlist_WinWidth=35

" check php syntax
map <C-B> :!php -l %<CR>

" try docbook shortcuts
map! ,,n <note><CR><CR></note><ESC>kA
map! ,,o <option></option><ESC>8hi
map! ,,e <emphasis></emphasis><ESC>10hi
map! ,,q <quote></quote><ESC>7hi
map! ,,c <command></command><ESC>9hi
map! ,,l <literal></literal><ESC>9hi
map! ,,sc <ESC>0i<screen></screen><ESC>8hi
map! ,,lw <literal><ESC>eli</literal>
map! ,,r <replaceable></replaceable><ESC>13hi
map! ,,g <guimenu></guimenu><ESC>9hi
map! ,,f <filename></filename><ESC>10hi
map! ,,s1 <sect1><CR><title></title><CR></sect1><ESC>k$7hi
map! ,,s2 <sect2><CR><title></title><CR></sect2><ESC>k$7hi
map! ,,s3 <sect3><CR><title></title><CR></sect3><ESC>k$7hi
map! ,,p <para><CR></para><ESC>kA<CR>
map! ,,vl <variablelist><CR>,,ve<ESC>3jA<CR></variablelist><ESC>4k$6hi
map! ,,ve <varlistentry><CR><term></term><CR><listitem><CR></listitem><CR></varlistentry><ESC>3k$6hi
map! ,,il <itemizedlist><CR><listitem><CR></listitem><CR></itemizedlist><ESC>2kA<CR>
map! ,,li <listitem><CR></listitem><ESC>kA<CR>
map! ,,x <xref linkend=""/><ESC>2hi
map! ,,q <quote></quote>;
map! ,,st <step><CR></step><ESC>kA<CR>,,p
map! ,,ti <title></title><ESC>7hi

" Tidy selected lines (or entire file) with _t:
nnoremap <silent> _t :%!perltidy -i=2 -dcsc -kbl=0 -vt=1 -l=160 -ce -q<Enter>
vnoremap <silent> _t :%!perltidy -i=2 -dcsc -kbl=0 -vt=1 -l=160 -ce -q<Enter>
nnoremap <silent> _x :%!xmlformat.pl -f /etc/daps/docbook-xmlformat.conf<Enter>
vnoremap <silent> _x :%!xmlformat.pl -f /etc/daps/docbook-xmlformat.conf<Enter>
map <silent> _bb :s/{/<replaceable>/g<CR>
map <silent> _bn :s/}/<\/replaceable>/g<CR>

" set omnifunc on for slected 'languages'
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType xml set textwidth=80
