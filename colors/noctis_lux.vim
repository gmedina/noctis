" Noctis Lux
" Generated from themes/lux.json by scripts/build-vim.mjs.

highlight clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'noctis_lux'
set background=light

if has('termguicolors')
  set termguicolors
endif

if get(g:, 'noctis_enable_cursorline', 1)
  set cursorline
endif

let s:terminal_ansi_colors = ['#003b42','#e34e1c','#00b368','#f49725','#0094f0','#ff5792','#00bdd6','#8ca6a6','#004d57','#ff4000','#00d17a','#ff8c00','#0fa3ff','#ff6b9f','#00cbe6','#bbc3c4']
if has('nvim')
  let g:terminal_color_0 = s:terminal_ansi_colors[0]
  let g:terminal_color_1 = s:terminal_ansi_colors[1]
  let g:terminal_color_2 = s:terminal_ansi_colors[2]
  let g:terminal_color_3 = s:terminal_ansi_colors[3]
  let g:terminal_color_4 = s:terminal_ansi_colors[4]
  let g:terminal_color_5 = s:terminal_ansi_colors[5]
  let g:terminal_color_6 = s:terminal_ansi_colors[6]
  let g:terminal_color_7 = s:terminal_ansi_colors[7]
  let g:terminal_color_8 = s:terminal_ansi_colors[8]
  let g:terminal_color_9 = s:terminal_ansi_colors[9]
  let g:terminal_color_10 = s:terminal_ansi_colors[10]
  let g:terminal_color_11 = s:terminal_ansi_colors[11]
  let g:terminal_color_12 = s:terminal_ansi_colors[12]
  let g:terminal_color_13 = s:terminal_ansi_colors[13]
  let g:terminal_color_14 = s:terminal_ansi_colors[14]
  let g:terminal_color_15 = s:terminal_ansi_colors[15]
endif

function! s:hi(group, fg, bg, sp, style, ctermfg, ctermbg) abort
  let l:cmd = 'highlight ' . a:group
  let l:cmd .= empty(a:fg) ? ' guifg=NONE' : ' guifg=' . a:fg
  let l:cmd .= empty(a:bg) ? ' guibg=NONE' : ' guibg=' . a:bg
  let l:cmd .= empty(a:ctermfg) ? ' ctermfg=NONE' : ' ctermfg=' . a:ctermfg
  let l:cmd .= empty(a:ctermbg) ? ' ctermbg=NONE' : ' ctermbg=' . a:ctermbg
  if !empty(a:sp)
    let l:cmd .= ' guisp=' . a:sp
  endif
  let l:cmd .= empty(a:style) ? ' gui=NONE cterm=NONE term=NONE' : ' gui=' . a:style . ' cterm=' . a:style . ' term=' . a:style
  execute l:cmd
endfunction

call s:hi('Normal', '#005661', '#fef8ec', '', '', '23', '255')
call s:hi('ColorColumn', '', '#f1e6d0', '', '', '', '254')
call s:hi('Conceal', '#0094f0', '', '', '', '39', '')
call s:hi('Cursor', '#fef8ec', '#0092a8', '', '', '255', '37')
call s:hi('lCursor', '#fef8ec', '#0092a8', '', '', '255', '37')
call s:hi('CursorIM', '#fef8ec', '#0092a8', '', '', '255', '37')
call s:hi('CursorColumn', '', '#daeeee', '', '', '', '254')
call s:hi('CursorLine', '', '#daeeee', '', '', '', '254')
call s:hi('CursorLineNr', '#0099ad', '#daeeee', '', 'bold', '37', '254')
call s:hi('CursorLineFold', '#0099ad', '#daeeee', '', '', '37', '254')
call s:hi('CursorLineSign', '#0099ad', '#daeeee', '', '', '37', '254')
call s:hi('Directory', '#00bdd6', '', '', '', '44', '')
call s:hi('EndOfBuffer', '#fef8ec', '#fef8ec', '', '', '255', '255')
call s:hi('ErrorMsg', '#ff4000', '#fef8ec', '', 'bold', '202', '255')
call s:hi('FoldColumn', '#8ca6a6', '#f9f1e1', '', '', '247', '255')
call s:hi('Folded', '#8ca6a6', '#f9f1e1', '', 'italic', '247', '255')
call s:hi('IncSearch', '#fef8ec', '#8ce99a', '', 'bold', '255', '157')
call s:hi('LineNr', '#a0abac', '#fef8ec', '', '', '248', '255')
call s:hi('MatchParen', '#0099ad', '#deece4', '', 'bold', '37', '254')
call s:hi('ModeMsg', '#00b368', '', '', 'bold', '41', '')
call s:hi('MoreMsg', '#00b368', '', '', '', '41', '')
call s:hi('NonText', '#ded9cf', '', '', '', '253', '')
call s:hi('Pmenu', '#6a7a7c', '#f2edde', '', '', '243', '255')
call s:hi('PmenuSbar', '', '#f9f1e1', '', '', '', '255')
call s:hi('PmenuSel', '#005661', '#dbfaff', '', 'bold', '23', '255')
call s:hi('PmenuThumb', '', '#0099ad', '', '', '', '37')
call s:hi('Question', '#00b368', '', '', '', '41', '')
call s:hi('QuickFixLine', '', '#cfe3dd', '', 'bold', '', '253')
call s:hi('Search', '#005661', '#cfe3dd', '', '', '23', '253')
call s:hi('SignColumn', '#8ca6a6', '#fef8ec', '', '', '247', '255')
call s:hi('SpecialKey', '#ded9cf', '', '', '', '253', '')
call s:hi('SpellBad', '', '', '#ff4000', 'undercurl', '', '')
call s:hi('SpellCap', '', '', '#00c6e0', 'undercurl', '', '')
call s:hi('SpellLocal', '', '', '#0094f0', 'undercurl', '', '')
call s:hi('SpellRare', '', '', '#e69533', 'undercurl', '', '')
call s:hi('StatusLine', '#0099ad', '#dfeff1', '', 'bold', '37', '255')
call s:hi('StatusLineNC', '#87a7ab', '#f0e9d6', '', '', '247', '254')
call s:hi('StatusLineTerm', '#0099ad', '#dfeff1', '', 'bold', '37', '255')
call s:hi('StatusLineTermNC', '#87a7ab', '#f0e9d6', '', '', '247', '254')
call s:hi('TabLine', '#888477', '#f0e9d6', '', '', '244', '254')
call s:hi('TabLineFill', '', '#f0e9d6', '', '', '', '254')
call s:hi('TabLineSel', '#0099ad', '#fef8ec', '', 'bold', '37', '255')
call s:hi('Title', '#00bdd6', '', '', 'bold', '44', '')
call s:hi('VertSplit', '#ece2c6', '#fef8ec', '', '', '253', '255')
call s:hi('Visual', '', '#d8eeec', '', '', '', '254')
call s:hi('VisualNOS', '', '#d8eeec', '', '', '', '254')
call s:hi('WarningMsg', '#e69533', '', '', 'bold', '215', '')
call s:hi('WildMenu', '#fef8ec', '#0099ad', '', 'bold', '255', '37')
call s:hi('WinSeparator', '#ece2c6', '#fef8ec', '', '', '253', '255')
call s:hi('Comment', '#8ca6a6', '', '', 'italic', '247', '')
call s:hi('Constant', '#a88c00', '', '', '', '142', '')
call s:hi('String', '#00b368', '', '', '', '41', '')
call s:hi('Character', '#00b368', '', '', '', '41', '')
call s:hi('Number', '#5842ff', '', '', '', '63', '')
call s:hi('Boolean', '#5842ff', '', '', '', '63', '')
call s:hi('Float', '#5842ff', '', '', '', '63', '')
call s:hi('Identifier', '#fa8900', '', '', '', '214', '')
call s:hi('Function', '#0095a8', '', '', '', '37', '')
call s:hi('Statement', '#ff5792', '', '', '', '205', '')
call s:hi('Conditional', '#ff5792', '', '', '', '205', '')
call s:hi('Repeat', '#ff5792', '', '', '', '205', '')
call s:hi('Label', '#ff5792', '', '', '', '205', '')
call s:hi('Operator', '#ff5792', '', '', '', '205', '')
call s:hi('Keyword', '#ff5792', '', '', '', '205', '')
call s:hi('Exception', '#ff5792', '', '', '', '205', '')
call s:hi('PreProc', '#0094f0', '', '', '', '39', '')
call s:hi('Include', '#ff5792', '', '', '', '205', '')
call s:hi('Define', '#ff5792', '', '', '', '205', '')
call s:hi('Macro', '#0094f0', '', '', '', '39', '')
call s:hi('PreCondit', '#ff5792', '', '', '', '205', '')
call s:hi('Type', '#b3694d', '', '', '', '167', '')
call s:hi('StorageClass', '#ff5792', '', '', '', '205', '')
call s:hi('Structure', '#b3694d', '', '', '', '167', '')
call s:hi('Typedef', '#b3694d', '', '', '', '167', '')
call s:hi('Special', '#00bdd6', '', '', '', '44', '')
call s:hi('SpecialChar', '#009456', '', '', '', '35', '')
call s:hi('Tag', '#e64100', '', '', '', '202', '')
call s:hi('Delimiter', '#004d57', '', '', '', '23', '')
call s:hi('SpecialComment', '#8ca6a6', '', '', 'bold,italic', '247', '')
call s:hi('Debug', '#ff530f', '', '', '', '202', '')
call s:hi('Underlined', '#0094f0', '', '', 'underline', '39', '')
call s:hi('Ignore', '#8ca6a6', '', '', '', '247', '')
call s:hi('Error', '#ff4000', '#fef8ec', '', 'bold', '202', '255')
call s:hi('Todo', '#fef8ec', '#e69533', '', 'bold', '255', '215')
call s:hi('DiffAdd', '#8ce99a', '#ecf6df', '', '', '157', '255')
call s:hi('DiffChange', '#e9a149', '#fbead2', '', '', '215', '230')
call s:hi('DiffDelete', '#ff4000', '#fedbc6', '', '', '202', '230')
call s:hi('DiffText', '#e9a149', '#f8e0be', '', 'bold', '215', '230')
call s:hi('GitGutterAdd', '#8ce99a', '#fef8ec', '', '', '157', '255')
call s:hi('GitGutterChange', '#e9a149', '#fef8ec', '', '', '215', '255')
call s:hi('GitGutterDelete', '#ff4000', '#fef8ec', '', '', '202', '255')
call s:hi('TermCursor', '#fef8ec', '#0092a8', '', '', '255', '37')
call s:hi('TermCursorNC', '#fef8ec', '#daeeee', '', '', '255', '254')
call s:hi('DiagnosticError', '#ff4000', '', '', '', '202', '')
call s:hi('DiagnosticWarn', '#e69533', '', '', '', '215', '')
call s:hi('DiagnosticInfo', '#00c6e0', '', '', '', '45', '')
call s:hi('DiagnosticHint', '#58cc6d', '', '', '', '77', '')
call s:hi('DiagnosticUnderlineError', '', '', '#ff4000', 'undercurl', '', '')
call s:hi('DiagnosticUnderlineWarn', '', '', '#e69533', 'undercurl', '', '')
call s:hi('DiagnosticUnderlineInfo', '', '', '#00c6e0', 'undercurl', '', '')
call s:hi('DiagnosticUnderlineHint', '', '', '#58cc6d', 'undercurl', '', '')
call s:hi('htmlTag', '#e64100', '', '', '', '202', '')
call s:hi('htmlEndTag', '#e64100', '', '', '', '202', '')
call s:hi('htmlTagName', '#e64100', '', '', '', '202', '')
call s:hi('htmlArg', '#a88c00', '', '', '', '142', '')
call s:hi('cssBraces', '#004d57', '', '', '', '23', '')
call s:hi('cssClassName', '#b3694d', '', '', '', '167', '')
call s:hi('cssIdentifier', '#b3694d', '', '', '', '167', '')
call s:hi('cssProp', '#fa8900', '', '', '', '214', '')
call s:hi('cssAttr', '#00b368', '', '', '', '41', '')
call s:hi('jsonKeyword', '#a88c00', '', '', '', '142', '')
call s:hi('jsonString', '#00b368', '', '', '', '41', '')
call s:hi('markdownHeadingDelimiter', '#ff5792', '', '', '', '205', '')
call s:hi('markdownHeadingRule', '#8ca6a6', '', '', '', '247', '')
call s:hi('markdownCode', '#fa8900', '', '', '', '214', '')
call s:hi('markdownCodeBlock', '#fa8900', '', '', '', '214', '')
call s:hi('markdownLinkText', '#0094f0', '', '', 'underline', '39', '')
call s:hi('markdownUrl', '#00b368', '', '', '', '41', '')

highlight! link NvimInternalError Error
highlight! link NormalFloat Pmenu
highlight! link FloatBorder VertSplit
highlight! link DiagnosticFloatingError DiagnosticError
highlight! link DiagnosticFloatingWarn DiagnosticWarn
highlight! link DiagnosticFloatingInfo DiagnosticInfo
highlight! link DiagnosticFloatingHint DiagnosticHint
highlight! link DiagnosticSignError DiagnosticError
highlight! link DiagnosticSignWarn DiagnosticWarn
highlight! link DiagnosticSignInfo DiagnosticInfo
highlight! link DiagnosticSignHint DiagnosticHint
highlight! link LspReferenceText Visual
highlight! link LspReferenceRead Visual
highlight! link LspReferenceWrite Visual
highlight! link TSError Error
highlight! link TSPunctDelimiter Delimiter
highlight! link TSPunctBracket Delimiter
highlight! link TSPunctSpecial Special
highlight! link TSConstant Constant
highlight! link TSConstBuiltin Constant
highlight! link TSConstMacro Macro
highlight! link TSString String
highlight! link TSStringRegex String
highlight! link TSStringEscape SpecialChar
highlight! link TSCharacter Character
highlight! link TSNumber Number
highlight! link TSBoolean Boolean
highlight! link TSFloat Float
highlight! link TSFunction Function
highlight! link TSFuncBuiltin Function
highlight! link TSFuncMacro Macro
highlight! link TSParameter Identifier
highlight! link TSParameterReference Identifier
highlight! link TSMethod Function
highlight! link TSField Identifier
highlight! link TSProperty Identifier
highlight! link TSConstructor Special
highlight! link TSConditional Conditional
highlight! link TSRepeat Repeat
highlight! link TSLabel Label
highlight! link TSKeyword Keyword
highlight! link TSKeywordFunction Keyword
highlight! link TSKeywordOperator Operator
highlight! link TSOperator Operator
highlight! link TSException Exception
highlight! link TSType Type
highlight! link TSTypeBuiltin Type
highlight! link TSStructure Structure
highlight! link TSInclude Include
highlight! link TSVariable Identifier
highlight! link TSVariableBuiltin Special
highlight! link TSText Normal
highlight! link TSStrong Normal
highlight! link TSEmphasis Normal
highlight! link TSUnderline Underlined
highlight! link TSTitle Title
highlight! link TSLiteral String
highlight! link TSURI Underlined
highlight! link TSComment Comment
highlight! link TSTag Tag
highlight! link TSTagDelimiter Delimiter
highlight! link TSTagAttribute Identifier

if has('nvim')
  highlight! link @error Error
  highlight! link @punctuation.delimiter Delimiter
  highlight! link @punctuation.bracket Delimiter
  highlight! link @punctuation.special Special
  highlight! link @constant Constant
  highlight! link @constant.builtin Constant
  highlight! link @constant.macro Macro
  highlight! link @string String
  highlight! link @string.regex String
  highlight! link @string.escape SpecialChar
  highlight! link @character Character
  highlight! link @number Number
  highlight! link @boolean Boolean
  highlight! link @float Float
  highlight! link @function Function
  highlight! link @function.builtin Function
  highlight! link @function.macro Macro
  highlight! link @parameter Identifier
  highlight! link @method Function
  highlight! link @field Identifier
  highlight! link @property Identifier
  highlight! link @constructor Special
  highlight! link @conditional Conditional
  highlight! link @repeat Repeat
  highlight! link @label Label
  highlight! link @keyword Keyword
  highlight! link @keyword.function Keyword
  highlight! link @keyword.operator Operator
  highlight! link @operator Operator
  highlight! link @exception Exception
  highlight! link @type Type
  highlight! link @type.builtin Type
  highlight! link @namespace Identifier
  highlight! link @include Include
  highlight! link @variable Identifier
  highlight! link @variable.builtin Special
  highlight! link @text Normal
  highlight! link @text.strong Normal
  highlight! link @text.emphasis Normal
  highlight! link @text.underline Underlined
  highlight! link @text.title Title
  highlight! link @text.literal String
  highlight! link @text.uri Underlined
  highlight! link @comment Comment
  highlight! link @tag Tag
  highlight! link @tag.delimiter Delimiter
  highlight! link @tag.attribute Identifier
endif
