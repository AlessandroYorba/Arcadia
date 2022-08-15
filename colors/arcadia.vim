"AUTHOR: Alessandro Yorba
"SCRIPT: https://github.com/AlessandroYorba/Arcadia

"UPDATED: Wed Aug 15, 2022
"CHANGES: Pitch is DEFAULT

"TERMINAL: Michael Reinhardt https://github.com/mreinhardt

"SUPPORT:
"256 color terminals, Gui versions of vim, and Termguicolors versions of vim

"INSTALL:
"Unix users, place arcadia.vim in ~/.vim/colors
"Windows users, place arcadia.vim in ~\vimfiles\colors
"From your .vimrc add one of the following options

"colorscheme arcadia

set background=dark

highlight clear
	if exists("syntax_on")
	syntax reset
endif

let g:colors_name="arcadia"

if !exists("g:arcadia_Twilight")
	let g:arcadia_Twilight = 0
endif

if !exists("g:arcadia_Midnight")
	let g:arcadia_Midnight = 0
endif

if !exists("g:arcadia_Pitch")
	let g:arcadia_Pitch = 1
endif

"TODO
"TERMINAL COLORS
"let g:terminal_ansi_colors = [
"	\ '#262626',
"	\ '#D75F5F',
"	\ '#5F8787',
"	\ '#DFAF5F',
"	\ '#ae8687',
"	\ '#5F87AF',
"	\ '#AF8787',
"	\ '#87AFAF',
"	\ '#BFBFBF',
"	\ '#3a3a3a',
"	\ '#D75F5F',
"	\ '#5F8787',
"	\ '#DFAF5F',
"	\ '#AF8787',
"	\ '#87AFAF',
"	\ '#E5E5E5',]

"COMMON COLORS AND SETTINGS
"PURPLE:
highlight! Purple guifg=#875f87 guibg=NONE gui=NONE ctermfg=96 ctermbg=NONE cterm=NONE
highlight! link Function Purple
highlight! link Identifier Purple
highlight! link Statement Purple
highlight! link htmlArg Purple
highlight! link vimAutoEventList Purple
highlight! link vimFunction Purple
highlight! link vimUserFunc Purple
highlight! link netrwList Purple
highlight! link htmlStatement Purple

highlight! Purple_Light guifg=#8787af guibg=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
highlight! link PreProc Purple_Light
highlight! link Title Purple_Light
highlight! link FoldColumn Purple_Light

highlight! Purple_Dark guifg=#5f5f87 guibg=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
highlight! link Constant Purple_Dark
highlight! link vimCmdSep Purple_Dark
highlight! link Label Purple_Dark
highlight! link Conditional Purple_Dark

"BLUE:
highlight! Blue guifg=#5f87af guibg=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
highlight! link MoreMsg Blue
highlight! link WarningMsg Blue
highlight! link Directory Blue
highlight! link Special Blue

"RED:
highlight! Red guifg=#af5f87 guibg=NONE gui=NONE ctermfg=132 ctermbg=NONE cterm=NONE
highlight! link Type Red
highlight! link StorageClass Red
highlight! link htmlSpecialTagName Red
highlight! link vimAutoCmdSfxList Red

"GREEN:
highlight! Green guifg=#008787 guibg=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
highlight! link String Green
highlight! link netrwExe Green

highlight! Green_Reverse guifg=#008787 guibg=NONE gui=reverse ctermfg=30 ctermbg=NONE cterm=reverse
highlight! link MatchParen Green_Reverse

"GREY:
highlight! Grey guifg=#949494 guibg=NONE gui=NONE ctermfg=246 ctermbg=NONE cterm=NONE
highlight! link Operator Grey

highlight! Grey_Reverse guifg=#949494 guibg=NONE gui=reverse ctermfg=246 ctermbg=NONE cterm=reverse
highlight! link vimCommentTitle Grey_Reverse
highlight! link SpecialComment Grey_Reverse
highlight! link VimCommentTitle Grey_Reverse

highlight htmlItalic guifg=#af8787 guibg=NONE gui=NONE ctermfg=138 ctermbg=NONE cterm=NONE

"YELLOW:
highlight! Yellow guifg=#dfaf00 guibg=NONE gui=NONE ctermfg=178 ctermbg=NONE cterm=NONE
highlight! link Question Yellow

"highlight! Yellow_Reverse guifg=#af8700 guibg=NONE gui=reverse ctermfg=136 ctermbg=NONE cterm=reverse
highlight! Yellow_Reverse guifg=#dfaf00 guibg=NONE gui=reverse ctermfg=178 ctermbg=NONE cterm=reverse
highlight! link Search Yellow_Reverse



"WINDOW UI
highlight Underlined guifg=#bcbcbc guibg=NONE gui=underline ctermfg=250 ctermbg=NONE cterm=underline
highlight Todo guifg=#5f87af guibg=NONE gui=reverse ctermfg=67 ctermbg=NONE cterm=reverse
highlight Visual guifg=#878787 guibg=NONE gui=reverse ctermfg=102 ctermbg=NONE cterm=reverse
highlight Error guifg=#d75f5f guibg=NONE gui=reverse ctermfg=167 ctermbg=NONE cterm=reverse
highlight ErrorMsg guifg=#d75f5f guibg=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
highlight Cursor guifg=#000000 guibg=#ffffff gui=NONE ctermfg=16 ctermbg=231 cterm=NONE
highlight WildMenu guifg=#c6c6c6 guibg=NONE gui=reverse ctermfg=251 ctermbg=NONE cterm=reverse
highlight ModeMsg guifg=#dfdfdf guibg=NONE gui=NONE ctermfg=188 ctermbg=NONE cterm=NONE
highlight SignColumn guifg=#87af87 guibg=NONE gui=NONE ctermfg=108 ctermbg=NONE cterm=NONE

"DIFF
highlight DiffText guifg=#8787af guibg=NONE gui=reverse ctermfg=103 ctermbg=NONE cterm=reverse
highlight DiffAdd guifg=#afafd7 guibg=NONE gui=reverse ctermfg=146 ctermbg=NONE cterm=reverse
highlight DiffDelete guifg=#af5f5f guibg=NONE gui=reverse ctermfg=131 ctermbg=NONE cterm=reverse
highlight DiffChange guifg=#5f5f87 guibg=NONE gui=reverse ctermfg=60 ctermbg=NONE cterm=reverse
highlight link diffAdded DiffAdd
highlight link diffBDiffer WarningMsg
highlight link diffChanged DiffChange
highlight link diffCommon WarningMsg
highlight link diffDiffer WarningMsg
highlight link diffFile Directory
highlight link diffIdentical WarningMsg
highlight link diffIndexLine Number
highlight link diffIsA WarningMsg
highlight link diffNoEOL WarningMsg
highlight link diffOnly WarningMsg
highlight link diffRemoved DiffDelete

"DEPRECATED:
if 1
	"COLORS
	highlight Normal guifg=#d0d0d0 guibg=#262626 gui=NONE ctermfg=252 ctermbg=235 cterm=NONE
	highlight Comment guifg=#585858 guibg=NONE gui=NONE ctermfg=240 ctermbg=NONE cterm=NONE

	"WINDOW UI
	highlight StatusLine guifg=#eeeeee guibg=#1c1c1c gui=NONE ctermfg=255 ctermbg=234 cterm=NONE
	highlight StatusLineNC guifg=#6c6c6c guibg=#1c1c1c gui=NONE ctermfg=242 ctermbg=234 cterm=NONE
	highlight StatusLineTerm guifg=#eeeeee guibg=#1c1c1c gui=NONE ctermfg=255 ctermbg=234 cterm=NONE
	highlight StatusLineTermNC guifg=#6c6c6c guibg=#1c1c1c gui=NONE ctermfg=242 ctermbg=234 cterm=NONE

	highlight Pmenu guifg=#6c6c6c guibg=#303030 gui=NONE ctermfg=242 ctermbg=236 cterm=NONE
	highlight PmenuSel guifg=#eeeeee guibg=#303030 gui=NONE ctermfg=255 ctermbg=236 cterm=NONE
	highlight PmenuSbar guifg=#303030 guibg=#303030 gui=NONE ctermfg=236 ctermbg=236 cterm=NONE
	highlight PmenuThumb guifg=#303030 guibg=#303030 gui=NONE ctermfg=236 ctermbg=236 cterm=NONE
	highlight TabLine guifg=#6c6c6c guibg=#1c1c1c gui=NONE ctermfg=242 ctermbg=234 cterm=NONE
	highlight TabLineSel guifg=#eeeeee guibg=#1c1c1c gui=NONE ctermfg=255 ctermbg=234 cterm=NONE
	highlight TabLineFill guifg=NONE guibg=#1c1c1c gui=NONE ctermfg=NONE ctermbg=234 cterm=NONE

	highlight CursorLineNR guifg=#9e9e9e guibg=#1c1c1c gui=NONE ctermfg=247 ctermbg=234 cterm=NONE
	highlight CursorLine guifg=NONE guibg=#303030 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
	highlight CursorColumn guifg=NONE guibg=#303030 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
	highlight ColorColumn guifg=NONE guibg=#303030 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
	highlight Folded guifg=#6c6c6c guibg=NONE gui=NONE ctermfg=242 ctermbg=NONE cterm=NONE
	highlight VertSplit guifg=#3a3a3a guibg=#262626 gui=NONE ctermfg=237 ctermbg=235 cterm=NONE
	highlight LineNr guifg=#4e4e4e guibg=#1c1c1c gui=NONE ctermfg=239 ctermbg=234 cterm=NONE
	highlight NonText guifg=#3a3a3a guibg=NONE gui=NONE ctermfg=237 ctermbg=NONE cterm=NONE
	highlight SpecialKey guifg=#3a3a3a guibg=NONE gui=NONE ctermfg=237 ctermbg=NONE cterm=NONE

	highlight SpellBad guifg=#ff0000 guibg=NONE gui=undercurl ctermfg=196 ctermbg=NONE cterm=undercurl
	highlight SpellLocal guifg=#5f875f guibg=NONE gui=undercurl ctermfg=65 ctermbg=NONE cterm=undercurl
	highlight SpellCap guifg=#87afff guibg=NONE gui=undercurl ctermfg=111 ctermbg=NONE cterm=undercurl
	highlight SpellRare guifg=#ff8700 guibg=NONE gui=undercurl ctermfg=208 ctermbg=NONE cterm=undercurl

	highlight VisualNOS guifg=NONE guibg=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
	highlight Cursor guifg=#000000 guibg=#ffffff gui=NONE ctermfg=16 ctermbg=231 cterm=NONE
endif

"DEPRECATED:
if g:arcadia_Twilight
	"COLORS
	highlight Normal guifg=#bcbcbc guibg=#1c1c1c gui=NONE ctermfg=250 ctermbg=234 cterm=NONE
	highlight Comment guifg=#4e4e4e guibg=NONE gui=NONE ctermfg=239 ctermbg=NONE cterm=NONE

	"WINDOW UI
	highlight StatusLine guifg=#eeeeee guibg=#121212 gui=NONE ctermfg=255 ctermbg=233 cterm=NONE
	highlight StatusLineNC guifg=#626262 guibg=#121212 gui=NONE ctermfg=241 ctermbg=233 cterm=NONE
	highlight StatusLineTerm guifg=#eeeeee guibg=#121212 gui=NONE ctermfg=255 ctermbg=233 cterm=NONE
	highlight StatusLineTermNC guifg=#626262 guibg=#121212 gui=NONE ctermfg=241 ctermbg=233 cterm=NONE

	highlight Pmenu guifg=#626262 guibg=#262626 gui=NONE ctermfg=241 ctermbg=235 cterm=NONE
	highlight PmenuSel guifg=#eeeeee guibg=#262626 gui=NONE ctermfg=255 ctermbg=235 cterm=NONE
	highlight PmenuSbar guifg=#262626 guibg=#262626 gui=NONE ctermfg=235 ctermbg=235 cterm=NONE
	highlight PmenuThumb guifg=#262626 guibg=#262626 gui=NONE ctermfg=235 ctermbg=235 cterm=NONE
	highlight TabLine guifg=#5f5f87 guibg=#121212 gui=NONE ctermfg=60 ctermbg=233 cterm=NONE
	highlight TabLineSel guifg=#eeeeee guibg=#121212 gui=NONE ctermfg=255 ctermbg=233 cterm=NONE
	highlight TabLineFill guifg=NONE guibg=#121212 gui=NONE ctermfg=NONE ctermbg=233 cterm=NONE

	highlight CursorLineNR guifg=#9e9e9e guibg=#121212 gui=NONE ctermfg=247 ctermbg=233 cterm=NONE
	highlight CursorLine guifg=NONE guibg=#262626 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
	highlight CursorColumn guifg=NONE guibg=#262626 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
	highlight ColorColumn guifg=NONE guibg=#262626 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
	highlight Folded guifg=#626262 guibg=NONE gui=NONE ctermfg=241 ctermbg=NONE cterm=NONE
	highlight VertSplit guifg=#303030 guibg=#1c1c1c gui=NONE ctermfg=236 ctermbg=234 cterm=NONE
	highlight LineNr guifg=#4e4e4e guibg=#121212 gui=NONE ctermfg=239 ctermbg=233 cterm=NONE
	highlight NonText guifg=#303030 guibg=NONE gui=NONE ctermfg=236 ctermbg=NONE cterm=NONE
	highlight SpecialKey guifg=#303030 guibg=NONE gui=NONE ctermfg=236 ctermbg=NONE cterm=NONE
endif

"DEPRECATED:
if g:arcadia_Midnight
	"COLORS
	highlight Normal guifg=#bcbcbc guibg=#121212 gui=NONE ctermfg=250 ctermbg=233 cterm=NONE
	highlight Comment guifg=#4e4e4e guibg=NONE gui=NONE ctermfg=239 ctermbg=NONE cterm=NONE

	"WINDOW UI
	highlight StatusLine guifg=#eeeeee guibg=#1c1c1c gui=NONE ctermfg=255 ctermbg=234 cterm=NONE
	highlight StatusLineNC guifg=#585858 guibg=#1c1c1c gui=NONE ctermfg=240 ctermbg=234 cterm=NONE
	highlight StatusLineTerm guifg=#eeeeee guibg=#1c1c1c gui=NONE ctermfg=255 ctermbg=234 cterm=NONE
	highlight StatusLineTermNC guifg=#585858 guibg=#1c1c1c gui=NONE ctermfg=240 ctermbg=234 cterm=NONE

	highlight Pmenu guifg=#585858 guibg=#1c1c1c gui=none ctermfg=240 ctermbg=234 cterm=none
	highlight PmenuSel guifg=#eeeeee guibg=#1c1c1c gui=none ctermfg=255 ctermbg=234 cterm=none
	highlight PmenuSbar guifg=#1c1c1c guibg=#1c1c1c gui=NONE ctermfg=234 ctermbg=234 cterm=NONE
	highlight PmenuThumb guifg=#1c1c1c guibg=#1c1c1c gui=NONE ctermfg=234 ctermbg=234 cterm=NONE
	highlight TabLine guifg=#5f5f87 guibg=#1c1c1c gui=NONE ctermfg=60 ctermbg=234 cterm=NONE
	highlight TabLineSel guifg=#eeeeee guibg=#1c1c1c gui=none ctermfg=255 ctermbg=234 cterm=none
	highlight TabLineFill guifg=NONE guibg=#1c1c1c gui=NONE ctermfg=NONE ctermbg=234 cterm=NONE

	highlight CursorLineNR guifg=#9e9e9e guibg=#1c1c1c gui=NONE ctermfg=247 ctermbg=234 cterm=NONE
	highlight CursorLine guifg=NONE guibg=#080808 gui=NONE ctermfg=NONE ctermbg=232 cterm=NONE
	highlight CursorColumn guifg=NONE guibg=#080808 gui=NONE ctermfg=NONE ctermbg=232 cterm=NONE
	highlight ColorColumn guifg=NONE guibg=#080808 gui=NONE ctermfg=NONE ctermbg=232 cterm=NONE
	highlight Folded guifg=#585858 guibg=NONE gui=NONE ctermfg=240 ctermbg=NONE cterm=NONE
	highlight VertSplit guifg=#262626 guibg=#121212 gui=NONE ctermfg=235 ctermbg=233 cterm=NONE
	highlight LineNr guifg=#4e4e4e guibg=#1c1c1c gui=none ctermfg=239 ctermbg=234 cterm=none
	highlight NonText guifg=#262626 guibg=NONE gui=NONE ctermfg=235 ctermbg=NONE cterm=NONE
	highlight SpecialKey guifg=#262626 guibg=NONE gui=NONE ctermfg=235 ctermbg=NONE cterm=NONE
endif

"DEPRECATED:
if g:arcadia_Pitch
	"COLORS
	highlight Normal guifg=#bcbcbc guibg=#080808 gui=NONE ctermfg=250 ctermbg=232 cterm=NONE
	highlight Comment guifg=#4e4e4e guibg=NONE gui=NONE ctermfg=239 ctermbg=NONE cterm=NONE

	"WINDOW UI
	highlight StatusLine guifg=#eeeeee guibg=#121212 gui=NONE ctermfg=255 ctermbg=233 cterm=NONE
	highlight StatusLineNC guifg=#4e4e4e guibg=#121212 gui=NONE ctermfg=239 ctermbg=233 cterm=NONE
	highlight StatusLineTerm guifg=#eeeeee guibg=#121212 gui=NONE ctermfg=255 ctermbg=233 cterm=NONE
	highlight StatusLineTermNC guifg=#4e4e4e guibg=#121212 gui=NONE ctermfg=239 ctermbg=233 cterm=NONE

	highlight Pmenu guifg=#4e4e4e guibg=#121212 gui=NONE ctermfg=239 ctermbg=233 cterm=NONE
	highlight PmenuSel guifg=#eeeeee guibg=#121212 gui=NONE ctermfg=255 ctermbg=233 cterm=NONE
	highlight PmenuSbar guifg=#121212 guibg=#121212 gui=NONE ctermfg=233 ctermbg=233 cterm=NONE
	highlight PmenuThumb guifg=#121212 guibg=#121212 gui=NONE ctermfg=233 ctermbg=233 cterm=NONE
	highlight TabLine guifg=#5f5f87 guibg=#121212 gui=NONE ctermfg=60 ctermbg=233 cterm=NONE
	highlight TabLineSel guifg=#eeeeee guibg=#121212 gui=NONE ctermfg=255 ctermbg=233 cterm=NONE
	highlight TabLineFill guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE

	highlight CursorLineNR guifg=#9e9e9e guibg=#121212 gui=NONE ctermfg=247 ctermbg=233 cterm=NONE
	highlight CursorLine guifg=NONE guibg=#000000 gui=NONE ctermfg=NONE ctermbg=16 cterm=NONE
	highlight CursorColumn guifg=NONE guibg=#000000 gui=NONE ctermfg=NONE ctermbg=16 cterm=NONE
	highlight ColorColumn guifg=NONE guibg=#000000 gui=NONE ctermfg=NONE ctermbg=16 cterm=NONE
	highlight Folded guifg=#4e4e4e guibg=NONE gui=NONE ctermfg=239 ctermbg=NONE cterm=NONE
	highlight VertSplit guifg=#1c1c1c guibg=#080808 gui=NONE ctermfg=234 ctermbg=232 cterm=NONE
	highlight LineNr guifg=#4e4e4e guibg=#121212 gui=NONE ctermfg=239 ctermbg=233 cterm=NONE
	highlight NonText guifg=#1c1c1c guibg=NONE gui=NONE ctermfg=234 ctermbg=NONE cterm=NONE
	highlight SpecialKey guifg=#1c1c1c guibg=NONE gui=NONE ctermfg=234 ctermbg=NONE cterm=NONE
endif

"LICENSE
"Copyright (c) 2022 Alessandro Yorba
"
"Permission is hereby granted, free of charge, to any person obtaining a copy
"of this software and associated documentation files (the "Software"), to deal
"in the Software without restriction, including without limitation the rights
"to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
"copies of the Software, and to permit persons to whom the Software is
"furnished to do so, subject to the following conditions:
"
"The above copyright notice and this permission notice shall be included in
"all copies or substantial portions of the Software.
"
"THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
"IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
"FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
"AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
"LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
"OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
"THE SOFTWARE.

