"Display
colorscheme elflord
set background=dark
syntax on					"シンタックスカラーリングを設定する
set number					"行番号を表示する
set title					"編集中のファイル名を表示する
set showcmd					"入力中のコマンドを表示する
set ruler					"座標を表示する
set showmatch				"閉じ括弧の入力時に対応する括弧を表示する
set matchtime=3				"showmatchの表示時間
set laststatus=2			"ステータスラインを常に表示する
set tabstop=2
set shiftwidth=2
set cursorline				"カーソルラインを入れる"


" 改行時の自動コメントアウトをオフにする
augroup auto_comment_off
		autocmd!
		autocmd BufEnter * setlocal formatoptions-=r
		autocmd BufEnter * setlocal formatoptions-=o
augroup END

set backup
set backupdir=$HOME/.vimbackup
au BufWritePre * let &bex = '.' . strftime("%Y%m%d_%H%M%S")
" バックアップを取得するファイル名を「ファイル名.タイムスタンプ」とする

nnoremap <Space>h  ^
nnoremap <Space>l  $

nnoremap k	gk
nnoremap j	gj
vnoremap k	gk
vnoremap j	gj
nnoremap gk	k
nnoremap gj	j
vnoremap gk	k
vnoremap gj	j

inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" move window
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H

" jjでエスケープ
inoremap <silent> jj <ESC>
" 日本語入力で”っj”と入力してもEnterキーで確定させればインサートモードを抜ける
inoremap <silent> っｊ <ESC>
nmap <CR> i<CR><ESC>	"nomal mode Enter を有効にする
nnoremap <Space>w  :<C-u>w<CR>
nnoremap <Space>q  :<C-u>q<CR>
nnoremap <Space>Q  :<C-u>q!<CR>

set list
set listchars=tab:>-,trail:_,nbsp:%
",eol:$

""---------------------------
""" Start Neobundle Settings.
""---------------------------
""" bundleで管理するディレクトリを指定
"set runtimepath+=~/.vim/bundle/neobundle.vim/
"
"" Required:
"call neobundle#begin(expand('~/.vim/bundle/'))
"
"" neobundle自体をneobundleで管理
"NeoBundleFetch 'Shougo/neobundle.vim'
"
"" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"
"NeoBundle 'Townk/vim-autoclose'
"NeoBundle 'scrooloose/nerdtree'
"NeoBundle 'Shougo/neocomplcache'
"NeoBundle 'lervag/vimtex'
"NeoBundle 'spolu/dwm.vim'
"NeoBundle 'Shougo/unite.vim'
"
"call neobundle#end()
"
"" Required:
"filetype plugin indent on
"
"" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
"" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
"NeoBundleCheck
"
""-------------------------
"" End Neobundle Settings.
""-------------------------
"
""-------------------------
"" neocomplcashe setting
""-------------------------
""
""Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
"" Disable AutoComplPop.
"let g:acp_enableAtStartup = 0
"" Use neocomplcache.
"let g:neocomplcache_enable_at_startup = 1
"" Use smartcase.
"let g:neocomplcache_enable_smart_case = 1
"" Set minimum syntax keyword length.
"let g:neocomplcache_min_syntax_length = 3
"let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
"
"" Enable heavy features.
"" Use camel case completion.
""let g:neocomplcache_enable_camel_case_completion = 1
"" Use underbar completion.
""let g:neocomplcache_enable_underbar_completion = 1
"
"" Define dictionary.
"let g:neocomplcache_dictionary_filetype_lists = {
"    \ 'default' : '',
"    \ 'vimshell' : $HOME.'/.vimshell_hist',
"    \ 'scheme' : $HOME.'/.gosh_completions'
"        \ }
"
"" Define keyword.
"if !exists('g:neocomplcache_keyword_patterns')
"	let g:neocomplcache_keyword_patterns = {}
"endif
"let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
"
"" Plugin key-mappings.
"inoremap <expr><C-g>     neocomplcache#undo_completion()
"inoremap <expr><C-l>     neocomplcache#complete_common_string()
"
"" Recommended key-mappings.
"" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
"	return neocomplcache#smart_close_popup() . "\<CR>"
"	" For no inserting <CR> key.
"	"return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
"endfunction
"" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y>  neocomplcache#close_popup()
"inoremap <expr><C-e>  neocomplcache#cancel_popup()
"" Close popup by <Space>.
""inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() :
"""\<Space>"
"
"" For cursor moving in insert mode(Not recommended)
""inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
""inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
""inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
""inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
"" Or set this.
""let g:neocomplcache_enable_cursor_hold_i = 1
"" Or set this.
""let g:neocomplcache_enable_insert_char_pre = 1
"
"" AutoComplPop like behavior.
""let g:neocomplcache_enable_auto_select = 1
"
"" Shell like behavior(not recommended).
""set completeopt+=longest
""let g:neocomplcache_enable_auto_select = 1
""let g:neocomplcache_disable_auto_complete = 1
""inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"
"" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"
"" Enable heavy omni completion.
"if !exists('g:neocomplcache_force_omni_patterns')
"	let g:neocomplcache_force_omni_patterns = {}
"endif
"let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"
"" For perlomni.vim setting.
"" https://github.com/c9s/perlomni.vim
"let g:neocomplcache_force_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
"
""-------------------------
"" End neocomplcashe setting
""-------------------------
"
"
""-------------------------
"" vimtex setting
""-------------------------
"
"let g:vimtex_latexmk_continuous = 1
"let g:vimtex_latexmk_background = 1
""let g:vimtex_latexmk_options = '-pdf'
""let g:vimtex_latexmk_options = '-pdfdvi'
""let g:vimtex_latexmk_options = '-pdfps'
"let g:vimtex_latexmk_options = '-platex -synctex=1'
"
"if has('unix')
"	let g:vimtex_view_general_viewer = 'xdg-open'
"	"let g:vimtex_view_general_viewer = 'okular'
"	"let g:vimtex_view_general_options = '--unique @pdf\#src:@line@tex'
"	"let g:vimtex_view_general_options_latexmk = '--unique'
"	"let g:vimtex_view_general_viewer = 'qpdfview'
"	"let g:vimtex_view_general_options = '--unique @pdf\#src:@tex:@line:@col'
"	"let g:vimtex_view_general_options_latexmk = '--unique'" Unix 用設定
"endif
"if has('mac')
"	" Mac 用設定
"	"let g:vimtex_view_general_viewer = 'open'
"	let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
"	let g:vimtex_view_general_options = '@line @pdf @tex'
"endif
"
""-------------------------
"" vimtex setting
""-------------------------
"
"
""-------------------------
"" im_control setting
""-------------------------
"
"if ( has('unix') && (!has('mac')))
"	set runtimepath+=~/.vim/plugin
"	" fcitx
"
"	" 「日本語入力固定モード」の動作設定
"	let IM_CtrlMode = 6
"	" 「日本語入力固定モード」切替キー
"	inoremap <silent> <C-J> <C-r>=IMState('FixMode')<CR>
"
"	" <ESC>押下後のIM切替開始までの反応が遅い場合はttimeoutlenを短く設定してみてください(ミリ秒)
"	set timeout timeoutlen=3000 ttimeoutlen=100
"endif
"
"if has('mac')
"	if has('gui_running')
"		let IM_CtrlMode = 4
"	else
"		let IM_CtrlMode = 1
"
"		function! IMCtrl(cmd)
"			let cmd = a:cmd
"			if cmd == 'On'
"				let res = system('osascript -e "tell application \"System Events\" to keystroke (key code {104})" > /dev/null 2>&1')
"			elseif cmd == 'Off'
"				let res = system('osascript -e "tell application \"System Events\" to keystroke (key code {102})" > /dev/null 2>&1')
"			elseif cmd == 'Toggle'
"				let res = system('osascript -e "tell application \"System Events\" to keystroke (key code {55, 49})" > /dev/null 2>&1')
"			endif
"			return ''
"		endfunction
"	endif
"
"	" 「日本語入力固定モード」のMacVimKaoriya対策を無効化
"	let IM_CtrlMacVimKaoriya = 0
"	" ctrl+jで日本語入力固定モードをOnOff
"	" inoremap <silent> <C-J> <C-^><C-r>=IMState('FixMode')<CR>
"endif
"
""-------------------------
"" End im_control setting
""-------------------------
"
""-------------------------
"" dwm.vim setting
""-------------------------
"
"nnoremap <c-j> <c-w>w
"nnoremap <c-k> <c-w>W
"nmap <m-r> <Plug>DWMRotateCounterclockwise
"nmap <m-t> <Plug>DWMRotateClockwise
"nmap <c-n> <Plug>DWMNew
"nmap <c-c> <Plug>DWMClose
"nmap <c-@> <Plug>DWMFocus
"nmap <c-Space> <Plug>DWMFocus
"nmap <c-l> <Plug>DWMGrowMaster
"nmap <c-h> <Plug>DWMShrinkMaster
"
""-------------------------
"" End dwm.vim setting
""-------------------------
"
""-------------------------
"" Unite.vim setting
""-------------------------
"
"noremap zp :Unite buffer_tab file_mru<CR>
"noremap zn :UniteWithBufferDir -buffer-name=files file file/new<CR>
"
""-------------------------
"" End Unite.vim setting
""-------------------------
"