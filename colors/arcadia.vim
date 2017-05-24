"  ________  ________  ________  ________  ________  ___  ________     
" |\   __  \|\   __  \|\   ____\|\   __  \|\   ___ \|\  \|\   __  \    
" \ \  \|\  \ \  \|\  \ \  \___|\ \  \|\  \ \  \_|\ \ \  \ \  \|\  \   
"  \ \   __  \ \   _  _\ \  \    \ \   __  \ \  \ \\ \ \  \ \   __  \  
"   \ \  \ \  \ \  \\  \\ \  \____\ \  \ \  \ \  \_\\ \ \  \ \  \ \  \ 
"    \ \__\ \__\ \__\\ _\\ \_______\ \__\ \__\ \_______\ \__\ \__\ \__\
"     \|__|\|__|\|__|\|__|\|_______|\|__|\|__|\|_______|\|__|\|__|\|__|
                                                                     
                                                                     
                                                                     


" A Terminal && Vim colorscheme
" Author:       Alessandro Yorba
" Script URL:   https://github.com/AlessandroYorba/Arcadia
" License:      MIT

" Copyright (c) 2017 Alessandro Yorba
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.

"=================================================================================
" ARCADIA TERMINAL:
"=================================================================================
"     Foreground    #             |      Selection     #             |
"     Background    #             |      Selected Text #             |
"     Bold          #             |                                        |
"     Links         #             |                                        |
"     CursorColor   #             |                                        |
"     CursorText    #             |                                        |
"=================================================================================
" ANSI COLORS:                                                                   |
"=================================================================================
"---------------------------------------|-----------------------------------------
"     NORMAL        Hex          xterm  |      BRIGHT        Hex          xterm  |
"---------------------------------------|-----------------------------------------
"     Black         #      0      |      brBlack       #      8      |
"     Red           #      1      |      brRed         #      9      |
"     Green         #      2      |      brGreen       #      10     |
"     Yellow        #      3      |      brYellow      #      11     |
"     Blue          #      4      |      brBlue        #      12     |
"     Magenta       #      5      |      brMagenta     #      13     |
"     Cyan          #      6      |      brCyan        #      14     |
"     White         #      7      |      brWhite       #      15     |
"---------------------------------------|-----------------------------------------
"=================================================================================

"=================================================================================
" SETUP:
"=================================================================================

set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif

"================================================================================
" SET DEFAULT PARAMETERS:
"================================================================================

let g:colors_name="arcadia"

if !exists("g:arcadia_Sunset")
    let g:arcadia_Sunset = 0
endif

if !exists("g:arcadia_Twilight")
    let g:arcadia_Twilight = 0
endif

if !exists("g:arcadia_Midnight")
    let g:arcadia_Midnight = 0
endif

if !exists("g:arcadia_Pitch")
    let g:arcadia_Pitch = 0
endif

if !exists("g:arcadia_Campfire")
    let g:arcadia_Campfire = 0
endif

"================================================================================
" CAMPFIRE:
"================================================================================
if g:arcadia_Campfire
    let arcadia_Hour = strftime("%H")
    "Day: 7am - 5pm
    if 7 <= arcadia_Hour && arcadia_Hour < 17
        let g:arcadia_Sunset = 0
        let g:arcadia_Twilight = 0
        let g:arcadia_Midnight = 0
        let g:arcadia_Pitch = 0
    "Sunset: 5pm - 7pm
    elseif 17 <= arcadia_Hour && arcadia_Hour < 19
        let g:arcadia_Sunset = 1
        let g:arcadia_Twilight = 0
        let g:arcadia_Midnight = 0
        let g:arcadia_Pitch = 0
    "Twilight: 7pm - 9pm
    elseif 19 <= arcadia_Hour && arcadia_Hour < 21
        let g:arcadia_Sunset = 0
        let g:arcadia_Twilight = 1
        let g:arcadia_Midnight = 0
        let g:arcadia_Pitch = 0
    "Midnight: 9pm - 12am
    elseif 21 <= arcadia_Hour && arcadia_Hour < 24
        let g:arcadia_Sunset = 0
        let g:arcadia_Twilight = 0
        let g:arcadia_Midnight = 1
        let g:arcadia_Pitch = 0
    "Pitch: 12am - 7am
    else
        let g:arcadia_Sunset = 0
        let g:arcadia_Twilight = 0
        let g:arcadia_Midnight = 0
        let g:arcadia_Pitch = 1
    endif
endif
"================================================================================
" ARCADIA HIGHLIGHTING:
"================================================================================

highlight! PreProc               guifg=#8787d7  guibg=NONE     gui=NONE       ctermfg=104    ctermbg=NONE  cterm=NONE
highlight! String                 guifg=#875f87  guibg=NONE     gui=NONE       ctermfg=96     ctermbg=NONE  cterm=NONE
highlight! Function               guifg=#5f5f87  guibg=NONE     gui=NONE       ctermfg=60     ctermbg=NONE  cterm=NONE
highlight! Identifier             guifg=#8787af  guibg=NONE     gui=NONE       ctermfg=103    ctermbg=NONE  cterm=NONE
highlight! Statement              guifg=#5f87af  guibg=NONE     gui=NONE       ctermfg=67     ctermbg=NONE  cterm=NONE
highlight! Operator                guifg=#5f5faf  guibg=NONE     gui=NONE       ctermfg=61     ctermbg=NONE  cterm=NONE
highlight! Constant               guifg=#0087af  guibg=NONE     gui=NONE       ctermfg=31     ctermbg=NONE  cterm=NONE
highlight! Type                   guifg=#008787  guibg=NONE     gui=NONE       ctermfg=30     ctermbg=NONE  cterm=NONE
highlight! Special                guifg=#8787af  guibg=NONE     gui=NONE       ctermfg=103    ctermbg=NONE  cterm=NONE
highlight! Question               guifg=#dfaf5f  guibg=NONE     gui=NONE       ctermfg=179    ctermbg=NONE  cterm=NONE
highlight! Underlined             guifg=#ff5f5f  guibg=NONE     gui=NONE       ctermfg=167    ctermbg=NONE  cterm=NONE
highlight! WarningMsg             guifg=#d75f5f  guibg=NONE     gui=NONE       ctermfg=167    ctermbg=NONE  cterm=NONE
highlight! Error                  guifg=#af005f  guibg=NONE     gui=reverse    ctermfg=125    ctermbg=NONE  cterm=reverse
highlight! SignColumn             guifg=#87af87  guibg=NONE     gui=NONE       ctermfg=108    ctermbg=NONE  cterm=NONE
highlight! Visual                 guifg=#1c1c1c  guibg=#008787  gui=NONE       ctermfg=234    ctermbg=30    cterm=NONE
highlight! Todo                   guifg=#8787d7  guibg=#1c1c1c  gui=reverse    ctermfg=104    ctermbg=234   cterm=reverse
highlight! Search                 guifg=#008787  guibg=#1c1c1c  gui=reverse    ctermfg=30     ctermbg=234   cterm=reverse
highlight! DiffAdd                guifg=#afafd7  guibg=NONE     gui=reverse    ctermfg=146    ctermbg=NONE  cterm=reverse
highlight! DiffChange             guifg=#5f5f87  guibg=NONE     gui=reverse    ctermfg=60     ctermbg=NONE  cterm=reverse
highlight! DiffText               guifg=#8787af  guibg=NONE     gui=reverse    ctermfg=103    ctermbg=NONE  cterm=reverse
highlight! DiffDelete             guifg=#af5f5f  guibg=NONE     gui=reverse    ctermfg=131    ctermbg=NONE  cterm=reverse

"TODO
highlight! SpellBad               guifg=#ff0000  guibg=NONE     gui=undercurl  ctermfg=196    ctermbg=NONE  cterm=undercurl
highlight! SpellLocal             guifg=#5f875f  guibg=NONE     gui=undercurl  ctermfg=65     ctermbg=NONE  cterm=undercurl
highlight! SpellCap               guifg=#87afff  guibg=NONE     gui=undercurl  ctermfg=111    ctermbg=NONE  cterm=undercurl
highlight! SpellRare              guifg=#ff8700  guibg=NONE     gui=undercurl  ctermfg=208    ctermbg=NONE  cterm=undercurl

highlight! SpecialComment         guifg=#5f5f87  guibg=NONE     gui=reverse    ctermfg=60     ctermbg=NONE  cterm=reverse

highlight! link Directory         PreProc
highlight! link Title             PreProc
highlight! link htmlItalic        PreProc
highlight! link ErrorMsg          PreProc
highlight! link MatchParen        Visual
highlight! link WildMenu          Search
highlight! link ModeMsg           Statement
highlight! link FoldColumn        Identifier
highlight! link MoreMsg           Question
highlight! link CursorLineNr      SpecialComment
highlight! link VimCommentTitle   SpecialComment

"================================================================================
" DAY:
"================================================================================
if 1
    highlight! Normal               guifg=#c6c6c6  guibg=#303030  gui=NONE     ctermfg=251   ctermbg=236   cterm=NONE
    highlight! CursorLine           guifg=NONE     guibg=#3a3a3a  gui=NONE     ctermfg=NONE  ctermbg=237   cterm=NONE
    highlight! StatusLine           guifg=#eeeeee  guibg=#262626  gui=NONE     ctermfg=255   ctermbg=235   cterm=NONE
    highlight! StatusLineNC         guifg=#767676  guibg=#262626  gui=NONE     ctermfg=243   ctermbg=235   cterm=NONE
    highlight! Comment              guifg=#767676  guibg=NONE     gui=NONE     ctermfg=243   ctermbg=NONE  cterm=NONE
    highlight! TabLineFill          guifg=NONE     guibg=#262626  gui=NONE     ctermfg=NONE  ctermbg=235   cterm=NONE
    highlight! PmenuSbar            guifg=#262626  guibg=#262626  gui=NONE     ctermfg=235   ctermbg=235   cterm=NONE
    highlight! NonText              guifg=#444444  guibg=NONE     gui=NONE     ctermfg=238   ctermbg=NONE  cterm=NONE

    highlight! link PmenuThumb      PmenuSbar
    highlight! link VertSplit       StatusLineNC
    highlight! link TabLine         StatusLineNC
    highlight! link Pmenu           StatusLineNC
    highlight! link LineNr          StatusLineNC
    highlight! link Folded          Comment
    highlight! link TabLineSel      StatusLine
    highlight! link PmenuSel        StatusLine
    highlight! link CursorColumn    CursorLine
    highlight! link ColorColumn     CursorLine
    highlight! link SpecialKey      NonText
endif

"================================================================================
" SUNSET:
"================================================================================
if g:arcadia_Sunset
    highlight! Normal               guifg=#c6c6c6  guibg=#262626  gui=NONE     ctermfg=251   ctermbg=235   cterm=NONE
    highlight! CursorLine           guifg=NONE     guibg=#303030  gui=NONE     ctermfg=NONE  ctermbg=236   cterm=NONE
    highlight! StatusLine           guifg=#eeeeee  guibg=#1c1c1c  gui=NONE     ctermfg=255   ctermbg=234   cterm=NONE
    highlight! StatusLineNC         guifg=#6c6c6c  guibg=#1c1c1c  gui=NONE     ctermfg=242   ctermbg=234   cterm=NONE
    highlight! Comment              guifg=#6c6c6c  guibg=NONE     gui=NONE     ctermfg=242   ctermbg=NONE  cterm=NONE
    highlight! TabLineFill          guifg=NONE     guibg=#1c1c1c  gui=NONE     ctermfg=NONE  ctermbg=234   cterm=NONE
    highlight! PmenuSbar            guifg=#1c1c1c  guibg=#1c1c1c  gui=NONE     ctermfg=234   ctermbg=234   cterm=NONE
    highlight! NonText              guifg=#3a3a3a  guibg=NONE     gui=NONE     ctermfg=237   ctermbg=NONE  cterm=NONE

    highlight! link PmenuThumb      PmenuSbar
    highlight! link VertSplit       StatusLineNC
    highlight! link TabLine         StatusLineNC
    highlight! link Pmenu           StatusLineNC
    highlight! link LineNr          StatusLineNC
    highlight! link Folded          Comment
    highlight! link TabLineSel      StatusLine
    highlight! link PmenuSel        StatusLine
    highlight! link CursorColumn    CursorLine
    highlight! link ColorColumn     CursorLine
    highlight! link SpecialKey      NonText
endif

"================================================================================
" TWILIGHT:
"================================================================================
if g:arcadia_Twilight
    highlight! Normal               guifg=#c6c6c6  guibg=#1c1c1c  gui=NONE     ctermfg=251   ctermbg=234   cterm=NONE
    highlight! CursorLine           guifg=NONE     guibg=#262626  gui=NONE     ctermfg=NONE  ctermbg=235   cterm=NONE
    highlight! StatusLine           guifg=#eeeeee  guibg=#121212  gui=NONE     ctermfg=255   ctermbg=233   cterm=NONE
    highlight! StatusLineNC         guifg=#626262  guibg=#121212  gui=NONE     ctermfg=241   ctermbg=233   cterm=NONE
    highlight! Comment              guifg=#626262  guibg=NONE     gui=NONE     ctermfg=241   ctermbg=NONE  cterm=NONE
    highlight! TabLineFill          guifg=NONE     guibg=#121212  gui=NONE     ctermfg=NONE  ctermbg=233   cterm=NONE
    highlight! PmenuSbar            guifg=#121212  guibg=#121212  gui=NONE     ctermfg=233   ctermbg=233   cterm=NONE
    highlight! NonText              guifg=#303030  guibg=NONE     gui=NONE     ctermfg=236   ctermbg=NONE  cterm=NONE

    highlight! link PmenuThumb      PmenuSbar
    highlight! link VertSplit       StatusLineNC
    highlight! link TabLine         StatusLineNC
    highlight! link Pmenu           StatusLineNC
    highlight! link LineNr          StatusLineNC
    highlight! link Folded          Comment
    highlight! link TabLineSel      StatusLine
    highlight! link PmenuSel        StatusLine
    highlight! link CursorColumn    CursorLine
    highlight! link ColorColumn     CursorLine
    highlight! link SpecialKey      NonText
endif

"================================================================================
" MIDNIGHT:
"================================================================================
if g:arcadia_Midnight
    highlight! Normal               guifg=#c6c6c6  guibg=#121212  gui=NONE     ctermfg=251   ctermbg=233   cterm=NONE
    highlight! CursorLine           guifg=NONE     guibg=#080808  gui=NONE     ctermfg=NONE  ctermbg=232   cterm=NONE
    highlight! StatusLine           guifg=#eeeeee  guibg=#1c1c1c  gui=none     ctermfg=255   ctermbg=234   cterm=none
    highlight! StatusLineNC         guifg=#585858  guibg=#1c1c1c  gui=none     ctermfg=240   ctermbg=234   cterm=none
    highlight! Comment              guifg=#585858  guibg=NONE     gui=NONE     ctermfg=240   ctermbg=NONE  cterm=NONE
    highlight! TabLineFill          guifg=NONE     guibg=#1c1c1c  gui=NONE     ctermfg=NONE  ctermbg=234   cterm=NONE
    highlight! PmenuSbar            guifg=#1c1c1c  guibg=#1c1c1c  gui=NONE     ctermfg=234   ctermbg=234   cterm=NONE
    highlight! NonText              guifg=#262626  guibg=NONE     gui=NONE     ctermfg=235   ctermbg=NONE  cterm=NONE

    highlight! link PmenuThumb      PmenuSbar
    highlight! link VertSplit       StatusLineNC
    highlight! link TabLine         StatusLineNC
    highlight! link Pmenu           StatusLineNC
    highlight! link LineNr          StatusLineNC
    highlight! link Folded          Comment
    highlight! link TabLineSel      StatusLine
    highlight! link PmenuSel        StatusLine
    highlight! link CursorColumn    CursorLine
    highlight! link ColorColumn     CursorLine
    highlight! link SpecialKey      NonText
endif

"================================================================================
" PITCH:
"================================================================================
if g:arcadia_Pitch
    highlight! Normal               guifg=#c6c6c6  guibg=#080808  gui=NONE     ctermfg=251   ctermbg=232   cterm=NONE
    highlight! CursorLine           guifg=NONE     guibg=#000000  gui=NONE     ctermfg=NONE  ctermbg=16   cterm=NONE
    highlight! StatusLine           guifg=#eeeeee  guibg=#121212  gui=NONE     ctermfg=255   ctermbg=233   cterm=NONE
    highlight! StatusLineNC         guifg=#4e4e4e  guibg=#121212  gui=NONE     ctermfg=239   ctermbg=233   cterm=NONE
    highlight! Comment              guifg=#4e4e4e  guibg=NONE     gui=NONE     ctermfg=239   ctermbg=NONE  cterm=NONE
    highlight! TabLineFill          guifg=NONE     guibg=NONE     gui=NONE     ctermfg=NONE  ctermbg=235   cterm=NONE
    highlight! PmenuSbar            guifg=#121212  guibg=#121212  gui=NONE     ctermfg=233   ctermbg=233   cterm=NONE
    highlight! NonText              guifg=#1c1c1c  guibg=NONE     gui=NONE     ctermfg=234   ctermbg=NONE  cterm=NONE

    highlight! link PmenuThumb      PmenuSbar
    highlight! link VertSplit       StatusLineNC
    highlight! link TabLine         StatusLineNC
    highlight! link Pmenu           StatusLineNC
    highlight! link LineNr          StatusLineNC
    highlight! link Folded          Comment
    highlight! link TabLineSel      StatusLine
    highlight! link PmenuSel        StatusLine
    highlight! link CursorColumn    CursorLine
    highlight! link ColorColumn     CursorLine
    highlight! link SpecialKey      NonText
endif
