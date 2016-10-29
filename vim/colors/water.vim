" Adapted from noctu

set background=dark
hi! clear

if exists("syntax_on")
  syntax reset
endif

let colors_name="water"

hi Cursor              ctermfg=7     ctermbg=1
hi CursorLine          ctermbg=0     cterm=none
hi MatchParen          ctermfg=7     ctermbg=none  cterm=underline
hi Pmenu               ctermfg=15    ctermbg=0
hi PmenuThumb          ctermbg=7
hi PmenuSBar           ctermbg=8
hi PmenuSel            ctermfg=0     ctermbg=4
hi ColorColumn         ctermbg=0
hi SpellBad            ctermfg=1     ctermbg=none  cterm=underline
hi SpellCap            ctermfg=10    ctermbg=none  cterm=underline
hi SpellRare           ctermfg=11    ctermbg=none  cterm=underline
hi SpellLocal          ctermfg=13    ctermbg=none  cterm=underline
hi NonText             ctermfg=8
hi LineNr              ctermfg=8     ctermbg=none
hi CursorLineNr        ctermfg=11    ctermbg=0
hi Visual              ctermfg=0     ctermbg=12
hi IncSearch           ctermfg=0     ctermbg=13    cterm=none
hi Search              ctermfg=0     ctermbg=10
hi StatusLine          ctermfg=7     ctermbg=0     cterm=bold
hi StatusLineNC        ctermfg=8     ctermbg=0     cterm=bold
hi VertSplit           ctermfg=0     ctermbg=0     cterm=none
hi TabLine             ctermfg=8     ctermbg=0     cterm=none
hi TabLineSel          ctermfg=7     ctermbg=0
hi Folded              ctermfg=3     ctermbg=0
hi Directory           ctermfg=12
hi Title               ctermfg=3     cterm=bold
hi ErrorMsg            ctermfg=15    ctermbg=1
hi DiffAdd             ctermfg=0     ctermbg=2
hi DiffChange          ctermfg=0     ctermbg=3
hi DiffDelete          ctermfg=0     ctermbg=1
hi DiffText            ctermfg=0     ctermbg=11    cterm=bold
hi! link CursorColumn  CursorLine
hi! link SignColumn    LineNr
hi! link WildMenu      Visual
hi! link FoldColumn    SignColumn
hi! link WarningMsg    ErrorMsg
hi! link MoreMsg       Title
hi! link Question      MoreMsg
hi! link ModeMsg       MoreMsg
hi! link TabLineFill   StatusLineNC
hi! link SpecialKey    NonText

hi Delimiter       ctermfg=none
hi Comment         ctermfg=8
hi Underlined      ctermfg=4   cterm=underline
hi Type            ctermfg=4
hi String          ctermfg=12
hi Keyword         ctermfg=1
hi Todo            ctermfg=15  ctermbg=none     cterm=bold
hi Function        ctermfg=4
hi Identifier      ctermfg=7   cterm=none
hi Statement       ctermfg=1
hi Constant        ctermfg=7
hi Number          ctermfg=12
hi Boolean         ctermfg=12
hi Special         ctermfg=7
hi Ignore          ctermfg=0
hi Operator        ctermfg=1
hi! link PreProc   Delimiter
hi! link Error     ErrorMsg

hi htmlTagName              ctermfg=4
hi htmlTag                  ctermfg=4
hi htmlArg                  ctermfg=12
hi htmlH1                   cterm=bold
hi htmlBold                 cterm=bold
hi htmlItalic               cterm=underline
hi htmlUnderline            cterm=underline
hi htmlBoldItalic           cterm=bold,underline
hi htmlBoldUnderline        cterm=bold,underline
hi htmlUnderlineItalic      cterm=underline
hi htmlBoldUnderlineItalic  cterm=bold,underline
hi! link htmlLink           Underlined
hi! link htmlEndTag         htmlTag

hi xmlTagName       ctermfg=4  cterm=none
hi xmlTag           ctermfg=4  cterm=none
hi xmlEntity        ctermfg=15 cterm=none
hi xmlAttrib        ctermfg=4  cterm=none
hi xmlEntityPunct   ctermfg=15  cterm=none
hi xmlString        ctermfg=12
hi! link xmlEndTag  xmlTag
hi! link xmlEqual   xmlAttrib


hi javascriptTemplateSubstitution ctermfg=none
hi javascriptImport ctermfg=1
hi javascriptImportDef ctermfg=4
hi javascriptExport ctermfg=1
hi javascriptDefault ctermfg=1
hi javascriptClassKeyword ctermfg=1
hi javascriptClassName ctermfg=13
hi javascriptClassSuperName ctermfg=13
hi javascriptClassExtends ctermfg=1
hi javascriptImportBlock ctermfg=4
hi javascriptString ctermfg=12
hi javascriptTemplate ctermfg=12
hi javascriptVariable ctermfg=1
hi javascriptArrowFunc ctermfg=1
hi javascriptIdentifierName ctermfg=7
hi javascriptObjectLabel ctermfg=none
hi javascriptClassSuper ctermfg=7
hi javascriptFunctionMethod ctermfg=4
hi javascriptOpSymbol ctermfg=1
hi javascriptOpSymbols ctermfg=1
hi javascriptDOMEventTargetMethod ctermfg=7
hi javascriptStringMethod ctermfg=7
hi javascriptBOMHistoryProp ctermfg=none
hi javascriptDOMElemProp ctermfg=7
hi javascriptDOMDocProp ctermfg=7
hi javascriptDOMStorageProp ctermfg=7
hi javascriptURLUtilsProp ctermfg=7
hi javascriptArrayMethod ctermfg=7
hi javascriptConsoleMethod ctermfg=7
hi javascriptResponseProp ctermfg=7
hi javascriptHeadersMethod ctermfg=7
hi javascriptPromiseMethod ctermfg=7
hi javascriptClassProperty ctermfg=7
hi javascriptLogicSymbol ctermfg=1
hi javascriptTemplateSB ctermfg=7
hi javascriptPropertyName ctermfg=12
hi javascriptEndColons ctermfg=none
hi javascriptMethodName ctermfg=4
hi javascriptFuncName ctermfg=5
hi javascriptReturn ctermfg=1
hi javascriptConditional ctermfg=1
hi javascriptConditionalElse ctermfg=1
hi javascriptTemplateSubstitution ctermfg=none
hi javascriptFuncKeyword ctermfg=1
hi javascriptFuncArg ctermfg=none
hi javascriptNull ctermfg=12
hi javascriptBraces ctermfg=none
hi javascriptBoolean ctermfg=12
hi javascriptObjectLabel ctermfg=4
hi javascriptLabel ctermfg=4
hi javascriptReact ctermfg=7
hi javascriptSwitch ctermfg=1
hi javascriptCase ctermfg=1
hi javascriptBranch ctermfg=1
hi javascriptMathStaticMethod ctermfg=7
hi javascriptBOMWindowMethod ctermfg=7
hi javascriptES6SetMethod ctermfg=7
hi javascriptRepeat ctermfg=1
hi javascriptForOperator ctermfg=1
hi javascriptJSONStaticMethod ctermfg=7
hi javascriptFileListMethod ctermfg=7
hi javascriptDOMElemMethod ctermfg=7

hi! link markdownHeadingRule        NonText
hi! link markdownHeadingDelimiter   markdownHeadingRule
hi! link markdownLinkDelimiter      Delimiter
hi! link markdownURLDelimiter       Delimiter
hi! link markdownCodeDelimiter      NonText
hi! link markdownLinkTextDelimiter  markdownLinkDelimiter
hi! link markdownUrl                markdownLinkText
hi! link markdownAutomaticLink      markdownLinkText
hi! link markdownCodeBlock          String
hi markdownCode                     cterm=bold
hi markdownBold                     cterm=bold
hi markdownItalic                   cterm=underline

hi rubyClass ctermfg=1
hi rubyConstant ctermfg=12
hi rubyDefine ctermfg=1
hi rubyAccess ctermfg=1
hi rubyInstanceVariable ctermfg=4
hi rubySymbol ctermfg=12
hi rubyBoolean ctermfg=12
hi rubyString ctermfg=12
hi rubyControl ctermfg=1
hi rubyRepeat ctermfg=1
hi rubyConditionalModifier ctermfg=1
hi rubyConditional ctermfg=1
hi rubyException ctermfg=1
hi rubyAttribute ctermfg=7
hi rubyTodo ctermfg=7 cterm=bold
hi rubyConstant ctermfg=4
hi rspecBeforeAndAfter ctermfg=1

hi gitCommitBranch               ctermfg=3
hi gitCommitSelectedType         ctermfg=10
hi gitCommitSelectedFile         ctermfg=2
hi gitCommitUnmergedType         ctermfg=9
hi gitCommitUnmergedFile         ctermfg=1
hi! link gitCommitFile           Directory
hi! link gitCommitUntrackedFile  gitCommitUnmergedFile
hi! link gitCommitDiscardedType  gitCommitUnmergedType
hi! link gitCommitDiscardedFile  gitCommitUnmergedFile

hi! link vimSetSep    Delimiter
hi! link vimContinue  Delimiter
hi! link vimHiAttrib  Constant
hi vimIsCommand ctermfg=1

hi! link NERDTreeHelp      Comment
hi! link NERDTreeExecFile  String
hi NERDTreeDir ctermfg=4
hi NERDTreeFile ctermfg=none
hi NERDTreeCWD ctermfg=5
hi NERDTreeUp ctermfg=8
hi NERDTreeClosable ctermfg=12
hi NERDTreeOpenable ctermfg=12
hi NERDTreeDirSlash ctermfg=4

hi! link helpExample         String
hi! link helpHeadline        Title
hi! link helpSectionDelim    Comment
hi! link helpHyperTextEntry  Statement
hi! link helpHyperTextJump   Underlined
hi! link helpURL             Underlined

hi! link CtrlPMatch    String
hi! link CtrlPLinePre  Comment

hi shDerefSimple     ctermfg=11
hi! link shDerefVar  shDerefSimple

hi SyntasticWarningSign  ctermfg=3   ctermbg=none
hi SyntasticErrorSign    ctermfg=1   ctermbg=none

hi rustKeyword ctermfg=1

hi coffeeKeyword      ctermfg=1
hi coffeeObject       ctermfg=7
hi coffeeObjAssign    ctermfg=4
hi coffeeConditional  ctermfg=1
hi coffeeParen        ctermfg=none
hi coffeeString       ctermfg=12
hi coffeeBoolean      ctermfg=12
hi coffeeCurly        ctermfg=none
hi coffeeSpecialVar   ctermfg=7
hi coffeeSpecialIdent ctermfg=7
hi coffeeStatement    ctermfg=1
hi coffeejQuery       ctermfg=7
hi coffeeSpecialOp    ctermfg=none
hi cjsxAttribProperty ctermfg=4

hi yamlConstant ctermfg=12

hi zshCommands ctermfg=1
