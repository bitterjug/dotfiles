
if  !has('conceal') || &enc != 'utf-8'
    finish
endif

syntax match elmNiceOperator "\\" conceal cchar=λ

"syntax match elmNiceOperator ">>" conceal cchar=》
"syntax match elmNiceOperator "<<" conceal cchar=《
"  》>>
"   
" 
"❴ {
"➨
" ≫ 》>>

syntax match cons "::" conceal cchar=∷

" syntax match elmNiceOperator "|>" conceal cchar=►
syntax match elmNiceOperator "|>" conceal cchar=⊳

" syntax match elmNiceOperator "<|" conceal cchar=◄
syntax match elmNiceOperator "<|" conceal cchar=⊲

syntax match elmNiceOperator "->" conceal cchar=➜
"nerd: 
" unicode: ⇒ ⟹   ➔ ➨ ➙ ➭
" ╭─ what isi it─╮
"syntax match elmNiceOperator ">\{3}" conceal cchar=⋙
"syntax match elmNiceOperator "<\{3}" conceal cchar=⋘
"syntax match elmNiceOperator "<\@<!<<<\@!" conceal cchar=❰
"syntax match elmNiceOperator ">\@<!>>>\@!" conceal cchar=❱
"
" Highlight todo and log
syn match elmTodo contained /Debug.\(todo\|log\)\s\+"[^"]*"/
hi def link elmTodo Todo

hi link elmNiceOperator Operator
hi! link Conceal Operator

setlocal conceallevel=2
