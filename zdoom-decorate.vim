" Vim syntax file
"      Language: ZDoom Decorate
"    Maintainer: Steve 'ryz' Hassenpflug 
" Last Modified: 2015-04-02 
"       Version: 0.1
"       Changes: 
"       Credits: Simon 'sirjuddington' Judd for SLADE and his hard work

if exists("b:current_syntax")
    finish
endif

syntax case ignore

" Keywords

syntax keyword decorateGeneral Actor Ready Deselect Select Fire AltFire Flash AltFlash Spawn Reload Zoom Loop Stop Wait 


" Syntax highlighting

let b:current_syntax = "zdec"

hi def link decorateGeneral Statement
