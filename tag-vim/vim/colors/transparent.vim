" Vim color file
" Based on URL:    http://people.altlinux.ru/~raorn/transparent.vim

" This color scheme uses "transparent" background (dark dark blue in gvim)
" Looks really nice when vim (console) started in transparent aterm
set background=dark

" First remove all existing highlighting.
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="transparent"

" default groups
hi Normal                           ctermfg=LightGray  ctermbg=NONE

if version >= 700
  hi CursorColumn   cterm=reverse
  hi CursorLine     cterm=underline
endif

"hi CursorIM      NONE              guifg=Black guibg=Purple
hi Directory                        ctermfg=White
hi DiffAdd                          ctermfg=White   ctermbg=DarkCyan
hi DiffChange                       ctermfg=Black   ctermbg=Gray
hi DiffDelete                       ctermfg=White   ctermbg=DarkRed
hi DiffText         cterm=bold      ctermfg=White   ctermbg=Gray
hi ErrorMsg                         ctermfg=DarkRed ctermbg=None
hi VertSplit        cterm=reverse
hi Folded           cterm=bold      ctermfg=Cyan    ctermbg=NONE
hi FoldColumn                       ctermfg=Green   ctermbg=NONE
hi IncSearch                        ctermfg=White   ctermbg=Black

" Line numbers and current line number
hi LineNr           cterm=NONE      ctermfg=Cyan
hi CursorLineNr     cterm=NONE      ctermfg=Yellow

if version >= 700
  hi MatchParen     cterm=bold,underline            ctermbg=NONE
endif

hi ModeMsg          cterm=bold      ctermfg=White
hi MoreMsg          cterm=bold      ctermfg=White
hi NonText                          ctermfg=NONE
if version >= 700
  hi Pmenu                          ctermfg=Black   ctermbg=Cyan
  hi PmenuSel                       ctermfg=Black   ctermbg=Grey
  hi PmenuSbar                      ctermfg=Black   ctermbg=Grey
  hi PmenuThumb     cterm=reverse
endif
hi Question                         ctermfg=Green
hi Search           cterm=reverse   ctermfg=fg      ctermbg=NONE
hi SpecialKey                       ctermfg=LightRed
if version >= 700
  hi SpellBad                                       ctermbg=Red
  hi SpellCap                                       ctermbg=Blue
  hi SpellRare                                      ctermbg=Magenta
  hi SpellLocal                                     ctermbg=Cyan
endif
hi StatusLine       cterm=bold,reverse ctermfg=White ctermbg=Black
hi StatusLineNC     cterm=reverse ctermfg=Gray  ctermbg=Black
if version >= 700
  hi TabLine        cterm=underline ctermfg=Gray
  hi TabLineSel     cterm=bold,underline ctermfg=White
  hi TabLineFill    cterm=underline ctermfg=Gray
endif
hi Title            ctermfg=LightGreen
hi Visual           cterm=inverse ctermfg=White ctermbg=DarkGray
hi VisualNOS        cterm=bold,underline
hi WarningMsg       ctermfg=White ctermbg=DarkRed
hi WildMenu         cterm=bold  ctermfg=Black ctermbg=Yellow
"hi Menu  
"hi Scrollbar 
"hi Tooltip 

" syntax highlighting groups
hi Comment          ctermfg=LightCyan

hi Constant         ctermfg=LightGreen
hi String           ctermfg=DarkGreen
hi Character        ctermfg=DarkGreen
"hi Number
"hi Boolean
"hi Float

hi Identifier     ctermfg=Cyan
hi Function       ctermfg=White
hi Type           ctermfg=Green
hi link clighterDeclRefExprCall Function
hi link clighterMacroInstantiation Constant
hi link clighterTypeRef Type
hi link clighterStructDecl Type
hi link clighterClassDecl Type
hi link clighterEnumDecl Type
hi link clighterEnumConstantDecl Identifier
hi link clighterDeclRefExprEnum Identifier
hi link clighterCursorDefRef IncSearch
hi link clighterFunctionDecl Function
hi link clighterDeclRefExprCall Function
hi link clighterMemberRefExpr Function
hi link clighterNamespace None


hi Statement      ctermfg=Yellow
"hi Conditional
"hi Repeat
hi Label      ctermfg=White
hi Operator     ctermfg=Green
"hi Keyword
hi Exception      cterm=bold ctermfg=LightRed ctermbg=None

hi PreProc      ctermfg=DarkGreen
"hi Include
"hi Define
"hi Macro
"hi PreCondit

"hi StorageClass
"hi Structure
hi Typedef      ctermfg=Red

hi Special      ctermfg=Red
"hi SpecialChar
hi Tag        ctermfg=LightGreen
hi Delimiter      ctermfg=Green
"hi SpecialComment
hi Debug      ctermfg=White ctermbg=Black

hi Underlined cterm=underline

hi Ignore     ctermfg=DarkBlue

hi Error      ctermfg=White ctermbg=DarkRed

hi Todo       ctermfg=Black ctermbg=Gray
