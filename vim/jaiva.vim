" Vim syntax file
" Language:    Jaiva!
" Maintainer:  Generated from jaiva.tmLanguage.json
" Filenames:   *.jva, *.jiv, *.jaiva

if exists("b:current_syntax")
  finish
endif

syn case match

" ==============================================================================
" Variables & Identifiers
" ==============================================================================
syn match jaivaVariable "\<[a-zA-Z_][a-zA-Z0-9_]*\>"
syn match jaivaParameter "\%(kwenza\_.\{-}(\|,\s*\)\@<=\<[a-zA-Z_][a-zA-Z0-9_]*\>\ze\_.\{-}->"

" ==============================================================================
" Functions
" ==============================================================================
syn match jaivaFunction "\<[a-zA-Z_][a-zA-Z0-9_]*\>\ze("

" ==============================================================================
" Keywords
" ==============================================================================
syn keyword jaivaKeyword however tsea maak if mara kwenza cima colonize chaai khutla with nikhil idk sif
syn match jaivaKeyword "\<zama zama\>"
syn match jaivaKeyword "\<tšea\>"

syn keyword jaivaControl voetsek nevermind

syn keyword jaivaBoolean true false yebo aowa

" Special type markers from keywords: f~, F~, V~, single :, ?>, |>, <|
syn match jaivaTypeSpecial "f\~\|F\~\|V\~\|:\%(:\)\@!\|?>\||>\|<|"

" ==============================================================================
" Imports
" ==============================================================================
syn match jaivaImportPath "\%(tsea\|tšea\)\s*\zs\"[^\"]*\""

" ==============================================================================
" Strings & Escape Characters
" ==============================================================================
syn match jaivaEscape "\$." contained
syn region jaivaString start='"' end='"' contains=jaivaEscape

" ==============================================================================
" Numbers
" ==============================================================================
syn match jaivaNumberDouble "-\?\<\d\+\%(\.\d\+\)\?d\>"
syn match jaivaNumberLong   "-\?\<\d\+\%(\.\d\+\)\?L\>"
syn match jaivaNumberHex    "-\?\<0x[0-9a-fA-F]\+\>"
syn match jaivaNumberBinary "-\?\<0b[01]\+\>"
syn match jaivaNumberOctal  "-\?\<0c[0-9]\+\>"
syn match jaivaFloat        "-\?\<\d\+\.\d\+\%(e-\?\d\+\)\?\>"
syn match jaivaNumber       "-\?\<\d\+\%(e-\?\d\+\)\?\>"

" ==============================================================================
" Symbols & Operators
" ==============================================================================
syn match jaivaOperator "<=="
syn match jaivaOperator "<-"
syn match jaivaOperator "<="
syn match jaivaOperator ">="
syn match jaivaOperator "!="
syn match jaivaOperator "|;"
syn match jaivaOperator "="
syn match jaivaOperator "#"
syn match jaivaOperator "|"
syn match jaivaOperator "\*"
syn match jaivaOperator "\."
syn match jaivaOperator "\%(-\)\@<!>"
syn match jaivaOperator "<\%([~-]\)\@!"

syn match jaivaOpEnd    "?"
syn match jaivaOpEnd    ":::"
syn match jaivaOpEnd    "\%([fFV<]\)\@<!\~"

" ==============================================================================
" Punctuation
" ==============================================================================
syn match jaivaPunctuation "[()\[\],]"
syn match jaivaPunctuation "!\ze[ \t]*\%($\|@\)"
syn match jaivaPunctuation "->\|<~"

" ==============================================================================
" Comments & Doc Comments
" ==============================================================================
" Doc Comment tags and components
syn match jaivaDocParamTag   "\%(\s\|^\|@\*\)\zs\%(parameter\|param\|par\|p\|argument\|arg\)\ze\s*\$>" contained nextgroup=jaivaDocParamSep skipwhite
syn match jaivaDocParamSep   "\$>" contained nextgroup=jaivaDocParamVar skipwhite
syn match jaivaDocParamVar   "[^< \t]\+" contained nextgroup=jaivaDocParamArrow skipwhite
syn match jaivaDocParamArrow "<-" contained nextgroup=jaivaDocParamType skipwhite
syn match jaivaDocParamType  "\S\+" contained

syn match jaivaDocVersionTag "\%(\s\|^\|@\*\)\zs\%(from\|f\|version\|since\|ver\)\ze\s*\$>" contained nextgroup=jaivaDocVersionSep skipwhite
syn match jaivaDocVersionSep "\$>" contained nextgroup=jaivaDocVersionNum skipwhite
syn match jaivaDocVersionNum "\S\+" contained

syn match jaivaDocGenericTag "[^$ \t]\+\ze\s*\$>" contained nextgroup=jaivaDocSep skipwhite
syn match jaivaDocSep        "\$>" contained

" Doc comment line (@* ...)
syn region jaivaDocComment matchgroup=jaivaDocStart start="@\*" end="$" keepend contains=jaivaDocParamTag,jaivaDocVersionTag,jaivaDocGenericTag,jaivaDocSep,jaivaDocParamSep,jaivaDocParamVar,jaivaDocParamArrow,jaivaDocParamType,jaivaDocVersionSep,jaivaDocVersionNum

" Standard single-line comment (@ ...)
syn match jaivaComment "@\%(\*\)\@!.*"

" Multi-line block comment ({ ... })
syn region jaivaBlockComment start="{" end="}" contains=jaivaBlockComment

" ==============================================================================
" Highlight Links
" ==============================================================================
hi def link jaivaComment          Comment
hi def link jaivaBlockComment     Comment
hi def link jaivaDocComment       SpecialComment
hi def link jaivaDocStart         Type
hi def link jaivaDocParamTag      Tag
hi def link jaivaDocVersionTag    Tag
hi def link jaivaDocGenericTag    Tag
hi def link jaivaDocSep           Delimiter
hi def link jaivaDocParamSep      Delimiter
hi def link jaivaDocParamVar      Identifier
hi def link jaivaDocParamArrow    Type
hi def link jaivaDocParamType     Type
hi def link jaivaDocVersionSep    Delimiter
hi def link jaivaDocVersionNum    Number

hi def link jaivaKeyword          Keyword
hi def link jaivaControl          Statement
hi def link jaivaBoolean          Boolean
hi def link jaivaTypeSpecial      Type

hi def link jaivaImportPath       Type

hi def link jaivaString           String
hi def link jaivaEscape           SpecialChar

hi def link jaivaNumberDouble     Float
hi def link jaivaNumberLong       Number
hi def link jaivaNumberHex        Number
hi def link jaivaNumberBinary     Number
hi def link jaivaNumberOctal      Number
hi def link jaivaFloat            Float
hi def link jaivaNumber           Number

hi def link jaivaFunction         Function
hi def link jaivaVariable         Identifier
hi def link jaivaParameter        Identifier

hi def link jaivaOperator         Operator
hi def link jaivaOpEnd            Operator

hi def link jaivaPunctuation      Delimiter

let b:current_syntax = "jaiva"
