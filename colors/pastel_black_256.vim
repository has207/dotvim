" pastel_black color scheme

" ********************************************************************************
set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "pastel_black_256"


" General colors
hi Normal           ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi NonText          ctermfg=black       ctermbg=NONE        cterm=NONE

hi Cursor           ctermfg=black       ctermbg=white       cterm=reverse
hi LineNr           ctermfg=237         ctermbg=NONE        cterm=NONE

hi VertSplit        ctermfg=white       ctermbg=darkgray    cterm=NONE
hi StatusLine       ctermfg=white       ctermbg=darkgray    cterm=NONE
hi StatusLineNC     ctermfg=gray        ctermbg=darkgray    cterm=NONE  

hi Folded           ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi Title            ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi Visual           ctermfg=NONE        ctermbg=237         cterm=NONE

hi SpecialKey       ctermfg=NONE        ctermbg=NONE        cterm=NONE


hi Ignore           ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi Error            ctermfg=white       ctermbg=009         cterm=NONE
hi ErrorMsg         ctermfg=white       ctermbg=009         cterm=NONE
hi WarningMsg       ctermfg=white       ctermbg=009         cterm=NONE

" Message displayed in lower left, such as --INSERT--
hi ModeMsg          ctermfg=black       ctermbg=110         cterm=BOLD

hi CursorLine       ctermfg=NONE        ctermbg=NONE        cterm=BOLD
hi CursorColumn     ctermfg=NONE        ctermbg=NONE        cterm=BOLD
hi MatchParen       ctermfg=white       ctermbg=darkgray    cterm=NONE
hi Pmenu            ctermfg=black       ctermbg=138         cterm=NONE
hi PmenuSel         ctermfg=black       ctermbg=138         cterm=underline
hi PmenuSbar        ctermfg=black       ctermbg=white       cterm=NONE
hi PmenuThumb       ctermfg=NONE        ctermbg=darkgray    cterm=NONE
hi Search           ctermfg=NONE        ctermbg=NONE        cterm=underline
hi WildMenu         ctermfg=black       ctermbg=229         cterm=NONE

" Syntax highlighting
hi Comment          ctermfg=237         ctermbg=NONE        cterm=NONE
hi String           ctermfg=009         ctermbg=NONE        cterm=NONE
hi Number           ctermfg=009         ctermbg=NONE        cterm=NONE

hi Keyword          ctermfg=074         ctermbg=NONE        cterm=NONE
hi PreProc          ctermfg=074         ctermbg=NONE        cterm=NONE
hi Conditional      ctermfg=229         ctermbg=NONE        cterm=NONE

hi Todo             ctermfg=009         ctermbg=NONE        cterm=NONE
hi Constant         ctermfg=110         ctermbg=NONE        cterm=NONE

hi Identifier       ctermfg=110         ctermbg=NONE        cterm=NONE
hi Function         ctermfg=074         ctermbg=NONE        cterm=NONE
hi Type             ctermfg=229         ctermbg=NONE        cterm=NONE
hi Statement        ctermfg=229         ctermbg=NONE        cterm=NONE

hi Special          ctermfg=110         ctermbg=NONE        cterm=NONE
hi Delimiter        ctermfg=110         ctermbg=NONE        cterm=NONE
hi Operator         ctermfg=229         ctermbg=NONE        cterm=NONE


" == NERDtree ==
hi NerdTreeDir   ctermfg=074       ctermbg=NONE     cterm=NONE
hi NerdTreeUp 	 ctermfg=darkgray  ctermbg=NONE     cterm=NONE


" == Diff ==
hi DiffAdd       ctermfg=black     ctermbg=green    cterm=none
hi DiffDelete    ctermfg=black     ctermbg=red      cterm=none
hi DiffText      ctermfg=black     ctermbg=darkgray	cterm=none
hi DiffChange    ctermfg=black     ctermbg=110      cterm=none


" == Other ==
hi SpellCap      ctermbg=009       ctermfg=NONE     cterm=NONE


hi link Character       Constant
hi link Boolean         Constant
hi link Float           Number
hi link Repeat          Statement
hi link Label           Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special

" Special for Java
hi link javaClassDecl    Type
hi link javaScopeDecl         Identifier
hi link javaCommentTitle      javaDocSeeTag
hi link javaDocTags           javaDocSeeTag
hi link javaDocParam          javaDocSeeTag
hi link javaDocSeeTagParam    javaDocSeeTag

hi javaDocSeeTag              ctermfg=237    ctermbg=NONE        cterm=NONE
hi javaDocSeeTag              ctermfg=237    ctermbg=NONE        cterm=NONE
