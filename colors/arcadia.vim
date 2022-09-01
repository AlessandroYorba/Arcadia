"AUTHOR: Alessandro Yorba
"SCRIPT: https://github.com/AlessandroYorba/Arcadia

"UPDATED: Thur Sept 01, 2022
"CHANGES: lite Organization, revised ansi, testing Comment color

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

"TERMINAL COLORS
let g:terminal_ansi_colors = [
	\ '#080808',
	\ '#af5f87',
	\ '#008787',
	\ '#dfaf00',
	\ '#5f87af',
	\ '#875F87',
	\ '#8787af',
	\ '#bcbcbc',
	\ '#4e4e4e',
	\ '#af5f87',
	\ '#008787',
	\ '#dfaf00',
	\ '#5f87af',
	\ '#87af87',
	\ '#8787af',
	\ '#bcbcbc',]

"COLORS AND GROUPINGS:

"Purple:
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

"Purple_Light:
highlight! Purple_Light guifg=#8787af guibg=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
highlight! link PreProc Purple_Light
highlight! link Title Purple_Light
highlight! link FoldColumn Purple_Light
highlight! link Constant Purple_Light
highlight! link diffIndexLine Purple_Light

"Purple_Light_Reverse:
highlight! Purple_Light_Reverse guifg=#8787af guibg=NONE gui=reverse ctermfg=103 ctermbg=NONE cterm=reverse
highlight! link DiffText Purple_Light_Reverse

"Purple_Dark:
highlight! Purple_Dark guifg=#5f5f87 guibg=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
highlight! link vimCmdSep Purple_Dark
highlight! link Label Purple_Dark
highlight! link Conditional Purple_Dark

"Purple_Dark_Reverse:
highlight! Purple_Dark_Reverse guifg=#5f5f87 guibg=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
highlight! link DiffChange Purple_Dark_Reverse
highlight! link diffChanged Purple_Dark_Reverse

"Blue:
highlight! Blue guifg=#5f87af guibg=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
highlight! link MoreMsg Blue
highlight! link Directory Blue
highlight! link Special Blue
highlight! link htmlItalic Blue
highlight! link diffFile Blue

"Blue_Reverse:
highlight! Blue_Reverse guifg=#5f87af guibg=NONE gui=reverse ctermfg=67 ctermbg=NONE cterm=reverse
highlight! link Todo Blue_Reverse

"Red:
highlight! Red guifg=#af5f87 guibg=NONE gui=NONE ctermfg=132 ctermbg=NONE cterm=NONE
highlight! link Type Red
highlight! link StorageClass Red
highlight! link htmlSpecialTagName Red
highlight! link vimAutoCmdSfxList Red

highlight! link ErrorMsg Red
highlight! link WarningMsg Red
highlight! link diffBDiffer Red
highlight! link diffCommon Red
highlight! link diffDiffer Red
highlight! link diffIdentical Red
highlight! link diffIsA Red
highlight! link diffNoEOL Red
highlight! link diffOnly Red

"Red_Reverse:
highlight! Red_Reverse guifg=#d75f5f guibg=NONE gui=reverse ctermfg=167 ctermbg=NONE cterm=reverse
highlight! link Error Red_Reverse
highlight! link DiffDelete Red_Reverse
highlight! link diffRemoved Red_Reverse

"Green:
highlight! Green guifg=#008787 guibg=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
highlight! link String Green
highlight! link netrwExe Green

"Green_Reverse:
highlight! Green_Reverse guifg=#008787 guibg=NONE gui=reverse ctermfg=30 ctermbg=NONE cterm=reverse
highlight! link MatchParen Green_Reverse
highlight! link DiffAdd Green_Reverse
highlight! link diffAdded Green_Reverse

"Grey:
highlight! Grey guifg=#949494 guibg=NONE gui=NONE ctermfg=246 ctermbg=NONE cterm=NONE
highlight! link Operator Grey

"Grey_Reverse:
highlight! Grey_Reverse guifg=#949494 guibg=NONE gui=reverse ctermfg=246 ctermbg=NONE cterm=reverse
highlight! link vimCommentTitle Grey_Reverse
highlight! link SpecialComment Grey_Reverse
highlight! link VimCommentTitle Grey_Reverse
highlight! link Visual Grey_Reverse
highlight! link WildMenu Grey_Reverse

"Yellow:
highlight! Yellow guifg=#dfaf00 guibg=NONE gui=NONE ctermfg=178 ctermbg=NONE cterm=NONE
highlight! link Question Yellow

"Yellow_Reverse:
highlight! Yellow_Reverse guifg=#dfaf00 guibg=NONE gui=reverse ctermfg=178 ctermbg=NONE cterm=reverse
highlight! link Search Yellow_Reverse

"WINDOW UI:
if 1
	highlight Normal guifg=#bcbcbc guibg=#080808 gui=NONE ctermfg=250 ctermbg=232 cterm=NONE
	highlight Comment guifg=#4e4e4e guibg=NONE gui=NONE ctermfg=239 ctermbg=NONE cterm=NONE

	"TESTING: if used change ansi to match
	"highlight Comment guifg=#626262 guibg=NONE gui=NONE ctermfg=241 ctermbg=NONE cterm=NONE

	highlight StatusLine guifg=#eeeeee guibg=#121212 gui=NONE ctermfg=255 ctermbg=233 cterm=NONE
	highlight StatusLineNC guifg=#4e4e4e guibg=#121212 gui=NONE ctermfg=239 ctermbg=233 cterm=NONE
	highlight StatusLineTerm guifg=#eeeeee guibg=#121212 gui=NONE ctermfg=255 ctermbg=233 cterm=NONE
	highlight StatusLineTermNC guifg=#4e4e4e guibg=#121212 gui=NONE ctermfg=239 ctermbg=233 cterm=NONE

	highlight Pmenu guifg=#4e4e4e guibg=#121212 gui=NONE ctermfg=239 ctermbg=233 cterm=NONE
	highlight PmenuSel guifg=#eeeeee guibg=#121212 gui=NONE ctermfg=255 ctermbg=233 cterm=NONE
	highlight PmenuSbar guifg=#121212 guibg=#121212 gui=NONE ctermfg=233 ctermbg=233 cterm=NONE
	highlight PmenuThumb guifg=#121212 guibg=#121212 gui=NONE ctermfg=233 ctermbg=233 cterm=NONE
	highlight TabLine guifg=#5f5f87 guibg=#080808 gui=NONE ctermfg=60 ctermbg=232 cterm=NONE
	highlight TabLineSel guifg=#eeeeee guibg=#121212 gui=NONE ctermfg=255 ctermbg=233 cterm=NONE
	highlight TabLineFill guifg=NONE guibg=#080808 gui=NONE ctermfg=NONE ctermbg=232 cterm=NONE

	highlight CursorLineNR guifg=#9e9e9e guibg=#121212 gui=NONE ctermfg=247 ctermbg=233 cterm=NONE
	highlight CursorLine guifg=NONE guibg=#000000 gui=NONE ctermfg=NONE ctermbg=16 cterm=NONE
	highlight CursorColumn guifg=NONE guibg=#000000 gui=NONE ctermfg=NONE ctermbg=16 cterm=NONE
	highlight ColorColumn guifg=NONE guibg=#000000 gui=NONE ctermfg=NONE ctermbg=16 cterm=NONE
	highlight Folded guifg=#4e4e4e guibg=NONE gui=NONE ctermfg=239 ctermbg=NONE cterm=NONE
	highlight VertSplit guifg=#1c1c1c guibg=#080808 gui=NONE ctermfg=234 ctermbg=232 cterm=NONE
	highlight LineNr guifg=#4e4e4e guibg=#121212 gui=NONE ctermfg=239 ctermbg=233 cterm=NONE
	highlight NonText guifg=#1c1c1c guibg=NONE gui=NONE ctermfg=234 ctermbg=NONE cterm=NONE
	highlight SpecialKey guifg=#1c1c1c guibg=NONE gui=NONE ctermfg=234 ctermbg=NONE cterm=NONE

	highlight Underlined guifg=#bcbcbc guibg=NONE gui=underline ctermfg=250 ctermbg=NONE cterm=underline
	highlight Cursor guifg=#000000 guibg=#ffffff gui=NONE ctermfg=16 ctermbg=231 cterm=NONE
	highlight ModeMsg guifg=#dfdfdf guibg=NONE gui=NONE ctermfg=188 ctermbg=NONE cterm=NONE
	highlight SignColumn guifg=#87af87 guibg=NONE gui=NONE ctermfg=108 ctermbg=NONE cterm=NONE
	highlight VisualNOS guifg=NONE guibg=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline

	highlight SpellBad guifg=#ff0000 guibg=NONE gui=undercurl ctermfg=196 ctermbg=NONE cterm=undercurl
	highlight SpellLocal guifg=#5f875f guibg=NONE gui=undercurl ctermfg=65 ctermbg=NONE cterm=undercurl
	highlight SpellCap guifg=#87afff guibg=NONE gui=undercurl ctermfg=111 ctermbg=NONE cterm=undercurl
	highlight SpellRare guifg=#ff8700 guibg=NONE gui=undercurl ctermfg=208 ctermbg=NONE cterm=undercurl
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

