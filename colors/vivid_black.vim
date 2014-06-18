"
" vivid_black color scheme - modified version of ir_black to match my
" Xcode color scheme, and to work in terminal mode with csapprox
"
" To update: make modifications, open MacVim, and execute the following
" :CSApproxSnapshot! ~/.vim/colors/vivid_black_terminal.vim
"

" *********************************************************************
" More at: http://blog.infinitered.com/entries/show/8
" *********************************************************************

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "vivid_black"


"hi Example         guifg=NONE        guibg=NONE        gui=NONE

" General colors
hi Normal           guifg=#f6f3e8     guibg=black       gui=NONE
hi NonText          guifg=#919191     guibg=black       gui=NONE

hi Cursor           guifg=black       guibg=white       gui=NONE
hi LineNr           guifg=#3D3D3D     guibg=black       gui=NONE

hi VertSplit        guifg=#202020     guibg=#202020     gui=NONE
hi StatusLine       guifg=#CCCCCC     guibg=#202020     gui=italic
hi StatusLineNC     guifg=black       guibg=#202020     gui=NONE

hi Folded           guifg=#a0a8b0     guibg=#384048     gui=NONE
hi Title            guifg=#f6f3e8     guibg=NONE        gui=bold
hi Visual           guifg=NONE        guibg=#262D51     gui=NONE

hi SpecialKey       guifg=#808080     guibg=#343434     gui=NONE

hi WildMenu         guifg=green       guibg=yellow      gui=NONE
hi PmenuSbar        guifg=black       guibg=white       gui=NONE
"hi Ignore           guifg=gray        guibg=black       gui=NONE

hi Error            guifg=NONE        guibg=NONE        gui=undercurl     guisp=#FF6C60 " undercurl color
hi ErrorMsg         guifg=white       guibg=#FF6C60     gui=BOLD
hi WarningMsg       guifg=white       guibg=#FF6C60     gui=BOLD

" Message displayed in lower left, such as --INSERT--
hi ModeMsg          guifg=black       guibg=#C6C5FE     gui=BOLD

if version >= 700 " Vim 7.x specific colors
  hi CursorLine     guifg=NONE        guibg=#121212     gui=NONE
  hi CursorColumn   guifg=NONE        guibg=#121212     gui=NONE
  hi MatchParen     guifg=#f6f3e8     guibg=#857b6f     gui=BOLD
  hi Pmenu          guifg=#f6f3e8     guibg=#444444     gui=NONE
  hi PmenuSel       guifg=#000000     guibg=#cae682     gui=NONE
  hi Search         guifg=NONE        guibg=NONE        gui=underline
endif

" Syntax highlighting
hi Comment          guifg=#00FF00     guibg=NONE        gui=NONE
hi String           guifg=#FF0062     guibg=NONE        gui=NONE
hi Number           guifg=#005EFF     guibg=NONE        gui=NONE

hi Keyword          guifg=#00A9FF     guibg=NONE        gui=NONE
hi PreProc          guifg=#00A9FF     guibg=NONE        gui=NONE
hi Conditional      guifg=#6699CC     guibg=NONE        gui=NONE

hi Todo             guifg=#8f8f8f     guibg=NONE        gui=NONE
hi Constant         guifg=#99CC99     guibg=NONE        gui=NONE

hi Identifier       guifg=#FFFFFF     guibg=NONE        gui=NONE
hi Function         guifg=#FF7D00     guibg=NONE        gui=NONE
hi Type             guifg=#919191     guibg=NONE        gui=NONE
hi Statement        guifg=#919191     guibg=NONE        gui=NONE

hi Special          guifg=#E18964     guibg=NONE        gui=NONE
hi Delimiter        guifg=#00A0A0     guibg=NONE        gui=NONE
hi Operator         guifg=white       guibg=NONE        gui=NONE

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


" Special for Ruby
hi rubyRegexp                  guifg=#B18A3D      guibg=NONE      gui=NONE
hi rubyRegexpDelimiter         guifg=#FF8000      guibg=NONE      gui=NONE
hi rubyEscape                  guifg=white        guibg=NONE      gui=NONE
hi rubyInterpolationDelimiter  guifg=#00A0A0      guibg=NONE      gui=NONE
hi rubyControl                 guifg=#6699CC      guibg=NONE      gui=NONE
"hi rubyGlobalVariable          guifg=#FFCCFF      guibg=NONE      gui=NONE
hi rubyStringDelimiter         guifg=#336633      guibg=NONE      gui=NONE
"rubyInclude
"rubySharpBang
"rubyAccess
"rubyPredefinedVariable
"rubyBoolean
"rubyClassVariable
"rubyBeginEnd
"rubyRepeatModifier
"hi link rubyArrayDelimiter    Special  " [ , , ]
"rubyCurlyBlock  { , , }

hi link rubyClass             Keyword 
hi link rubyModule            Keyword 
hi link rubyKeyword           Keyword 
hi link rubyOperator          Operator
hi link rubyIdentifier        Identifier
hi link rubyInstanceVariable  Identifier
hi link rubyGlobalVariable    Identifier
hi link rubyClassVariable     Identifier
hi link rubyConstant          Type  


" Special for Java
" hi link javaClassDecl    Type
hi link javaScopeDecl         Identifier 
hi link javaCommentTitle      javaDocSeeTag 
hi link javaDocTags           javaDocSeeTag 
hi link javaDocParam          javaDocSeeTag 
hi link javaDocSeeTagParam    javaDocSeeTag 

hi javaDocSeeTag              guifg=#CCCCCC     guibg=NONE        gui=NONE
hi javaDocSeeTag              guifg=#CCCCCC     guibg=NONE        gui=NONE
"hi javaClassDecl              guifg=#CCFFCC     guibg=NONE        gui=NONE


" Special for XML
hi link xmlTag          Keyword 
hi link xmlTagName      Conditional 
hi link xmlEndTag       Identifier 


" Special for HTML
hi link htmlTag         Keyword 
hi link htmlTagName     Conditional 
hi link htmlEndTag      Identifier 


" Special for Javascript
hi link javaScriptNumber      Number 


" Special for Python
"hi  link pythonEscape         Keyword      


" Special for CSharp
hi  link csXmlTag             Keyword      

