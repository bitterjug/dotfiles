" Make inline code stand out
hi link markdownCode Identifier
hi link markdownCodeBlock Identifier
hi link markdownCodeDelimeter Ignore
" conceal ends of code fragments
" syn region markdownCode matchgroup=markdownCodeDelimiter start="`" end="`" keepend contains=markdownLineStart concealends
" and list bullets
syntax match markdownPrettyListMarker /[-*+]/ conceal cchar=• contained containedin=markdownListMarker
" italic
syn region markdownItalic matchgroup=markdownItalicDelimiter start="\S\@<=\*\|\*\S\@=" end="\S\@<=\*\|\*\S\@=" keepend contains=markdownLineStart concealends
syn region markdownItalic matchgroup=markdownItalicDelimiter start="\S\@<=_\|_\S\@=" end="\S\@<=_\|_\S\@=" keepend contains=markdownLineStart concealends
" Bold
syn region markdownBold matchgroup=markdownBolDelimiter start="\S\@<=\*\*\|\*\*\S\@=" end="\S\@<=\*\*\|\*\*\S\@=" keepend contains=markdownLineStart concealends
syn region markdownBold matchgroup=markdownBolDelimiter start="\S\@<=__\|__\S\@=" end="\S\@<=__\|__\S\@=" keepend contains=markdownLineStart concealends
