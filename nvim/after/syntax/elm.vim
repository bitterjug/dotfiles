
if  !has('conceal') || &enc != 'utf-8'
    finish
endif

syntax match elmNiceOperator "\\" conceal cchar=λ
"syntax match elmNiceOperator "|>" conceal cchar=
"syntax match elmNiceOperator "<|" conceal cchar=

" 
"❴ {
"➨
" ≫ 》>>
syntax match elmNiceOperator "|>" conceal cchar=►
syntax match elmNiceOperator "<|" conceal cchar=◄
syntax match elmNiceOperator "->" conceal cchar=➜
"nerd: 
" unicode: ⇒ ⟹   ➔ ➨ ➙ ➭
" ╭─ what isi it─╮
"syntax match elmNiceOperator ">\{3}" conceal cchar=⋙
"syntax match elmNiceOperator "<\{3}" conceal cchar=⋘
"syntax match elmNiceOperator "<\@<!<<<\@!" conceal cchar=❰
"syntax match elmNiceOperator ">\@<!>>>\@!" conceal cchar=❱
hi link elmNiceOperator Operator
hi! link Conceal Operator
hi ALEError ctermbg=234 
hi ALEErrorLine ctermbg=none
setlocal conceallevel=2
