" Noctis Uva
" Generated from themes/uva.json by scripts/build-vim.mjs.

highlight clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'noctis_uva'
set background=dark

if has('termguicolors')
  set termguicolors
endif

if get(g:, 'noctis_enable_cursorline', 1)
  set cursorline
endif

let s:terminal_ansi_colors = ['#302f3d','#e66533','#49e9a6','#e4b781','#49ace9','#df769b','#49d6e9','#b6b3cc','#504e65','#e97749','#60ebb1','#e69533','#60b6eb','#e798b3','#60dbeb','#c5c2d6']
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

call s:hi('Normal', '#c5c2d6', '#292640', '', '', '251', '236')
call s:hi('ColorColumn', '', '#473856', '', '', '', '238')
call s:hi('Conceal', '#49ace9', '', '', '', '75', '')
call s:hi('Cursor', '#292640', '#bbb3ff', '', '', '236', '189')
call s:hi('lCursor', '#292640', '#bbb3ff', '', '', '236', '189')
call s:hi('CursorIM', '#292640', '#bbb3ff', '', '', '236', '189')
call s:hi('CursorColumn', '', '#342f58', '', '', '', '237')
call s:hi('CursorLine', '', '#342f58', '', '', '', '237')
call s:hi('CursorLineNr', '#7a70c2', '#342f58', '', 'bold', '98', '237')
call s:hi('CursorLineFold', '#7a70c2', '#342f58', '', '', '98', '237')
call s:hi('CursorLineSign', '#7a70c2', '#342f58', '', '', '98', '237')
call s:hi('Directory', '#49d6e9', '', '', '', '81', '')
call s:hi('EndOfBuffer', '#292640', '#292640', '', '', '236', '236')
call s:hi('ErrorMsg', '#e34e1c', '#292640', '', 'bold', '202', '236')
call s:hi('FoldColumn', '#716c93', '#232136', '', '', '243', '235')
call s:hi('Folded', '#716c93', '#232136', '', 'italic', '243', '235')
call s:hi('IncSearch', '#292640', '#40bf6a', '', 'bold', '236', '77')
call s:hi('LineNr', '#5c5973', '#292640', '', '', '241', '236')
call s:hi('MatchParen', '#6e67a8', '#322f4e', '', 'bold', '61', '237')
call s:hi('ModeMsg', '#49e9a6', '', '', 'bold', '85', '')
call s:hi('MoreMsg', '#49e9a6', '', '', '', '85', '')
call s:hi('NonText', '#454259', '', '', '', '239', '')
call s:hi('Pmenu', '#a9a5c0', '#2f2c49', '', '', '249', '237')
call s:hi('PmenuSbar', '', '#232136', '', '', '', '235')
call s:hi('PmenuSel', '#c5c2d6', '#453f73', '', 'bold', '251', '239')
call s:hi('PmenuThumb', '', '#6e67a8', '', '', '', '61')
call s:hi('Question', '#49e9a6', '', '', '', '85', '')
call s:hi('QuickFixLine', '', '#1c4457', '', 'bold', '', '23')
call s:hi('Search', '#c5c2d6', '#1c4457', '', '', '251', '23')
call s:hi('SignColumn', '#716c93', '#292640', '', '', '243', '236')
call s:hi('SpecialKey', '#454259', '', '', '', '239', '')
call s:hi('SpellBad', '', '', '#e34e1c', 'undercurl', '', '')
call s:hi('SpellCap', '', '', '#998ef1', 'undercurl', '', '')
call s:hi('SpellLocal', '', '', '#49ace9', 'undercurl', '', '')
call s:hi('SpellRare', '', '', '#e69533', 'undercurl', '', '')
call s:hi('StatusLine', '#998ef1', '#3e386a', '', 'bold', '147', '239')
call s:hi('StatusLineNC', '#8787ab', '#292640', '', '', '246', '236')
call s:hi('StatusLineTerm', '#998ef1', '#3e386a', '', 'bold', '147', '239')
call s:hi('StatusLineTermNC', '#8787ab', '#292640', '', '', '246', '236')
call s:hi('TabLine', '#a9a5c0', '#2f2c49', '', '', '249', '237')
call s:hi('TabLineFill', '', '#2f2c49', '', '', '', '237')
call s:hi('TabLineSel', '#998ef1', '#292640', '', 'bold', '147', '236')
call s:hi('Title', '#49d6e9', '', '', 'bold', '81', '')
call s:hi('VertSplit', '#171523', '#292640', '', '', '234', '236')
call s:hi('Visual', '', '#403c63', '', '', '', '239')
call s:hi('VisualNOS', '', '#403c63', '', '', '', '239')
call s:hi('WarningMsg', '#e69533', '', '', 'bold', '215', '')
call s:hi('WildMenu', '#292640', '#6e67a8', '', 'bold', '236', '61')
call s:hi('WinSeparator', '#171523', '#292640', '', '', '234', '236')
call s:hi('Comment', '#716c93', '', '', 'italic', '243', '')
call s:hi('Constant', '#d5971a', '', '', '', '178', '')
call s:hi('String', '#49e9a6', '', '', '', '85', '')
call s:hi('Character', '#49e9a6', '', '', '', '85', '')
call s:hi('Number', '#7060eb', '', '', '', '63', '')
call s:hi('Boolean', '#7060eb', '', '', '', '63', '')
call s:hi('Float', '#7060eb', '', '', '', '63', '')
call s:hi('Identifier', '#e4b781', '', '', '', '222', '')
call s:hi('Function', '#16a3b6', '', '', '', '38', '')
call s:hi('Statement', '#df769b', '', '', '', '211', '')
call s:hi('Conditional', '#df769b', '', '', '', '211', '')
call s:hi('Repeat', '#df769b', '', '', '', '211', '')
call s:hi('Label', '#df769b', '', '', '', '211', '')
call s:hi('Operator', '#df769b', '', '', '', '211', '')
call s:hi('Keyword', '#df769b', '', '', '', '211', '')
call s:hi('Exception', '#df769b', '', '', '', '211', '')
call s:hi('PreProc', '#49ace9', '', '', '', '75', '')
call s:hi('Include', '#df769b', '', '', '', '211', '')
call s:hi('Define', '#df769b', '', '', '', '211', '')
call s:hi('Macro', '#49ace9', '', '', '', '75', '')
call s:hi('PreCondit', '#df769b', '', '', '', '211', '')
call s:hi('Type', '#d67e5c', '', '', '', '173', '')
call s:hi('StorageClass', '#df769b', '', '', '', '211', '')
call s:hi('Structure', '#d67e5c', '', '', '', '173', '')
call s:hi('Typedef', '#d67e5c', '', '', '', '173', '')
call s:hi('Special', '#49d6e9', '', '', '', '81', '')
call s:hi('SpecialChar', '#16b673', '', '', '', '42', '')
call s:hi('Tag', '#e66533', '', '', '', '203', '')
call s:hi('Delimiter', '#c5c2d6', '', '', '', '251', '')
call s:hi('SpecialComment', '#716c93', '', '', 'bold,italic', '243', '')
call s:hi('Debug', '#e3541c', '', '', '', '202', '')
call s:hi('Underlined', '#49ace9', '', '', 'underline', '75', '')
call s:hi('Ignore', '#716c93', '', '', '', '243', '')
call s:hi('Error', '#e34e1c', '#292640', '', 'bold', '202', '236')
call s:hi('Todo', '#292640', '#e69533', '', 'bold', '236', '215')
call s:hi('DiffAdd', '#8ce99a', '#39454e', '', '', '157', '238')
call s:hi('DiffChange', '#ffc180', '#4b3f4a', '', '', '222', '238')
call s:hi('DiffDelete', '#e34e1c', '#472c3a', '', '', '202', '237')
call s:hi('DiffText', '#ffc180', '#655152', '', 'bold', '222', '240')
call s:hi('GitGutterAdd', '#8ce99a', '#292640', '', '', '157', '236')
call s:hi('GitGutterChange', '#ffc180', '#292640', '', '', '222', '236')
call s:hi('GitGutterDelete', '#e34e1c', '#292640', '', '', '202', '236')
call s:hi('TermCursor', '#292640', '#bbb3ff', '', '', '236', '189')
call s:hi('TermCursorNC', '#35305a', '#342f58', '', '', '238', '237')
call s:hi('DiagnosticError', '#e34e1c', '', '', '', '202', '')
call s:hi('DiagnosticWarn', '#e69533', '', '', '', '215', '')
call s:hi('DiagnosticInfo', '#998ef1', '', '', '', '147', '')
call s:hi('DiagnosticHint', '#49e9a6', '', '', '', '85', '')
call s:hi('DiagnosticUnderlineError', '', '', '#e34e1c', 'undercurl', '', '')
call s:hi('DiagnosticUnderlineWarn', '', '', '#e69533', 'undercurl', '', '')
call s:hi('DiagnosticUnderlineInfo', '', '', '#998ef1', 'undercurl', '', '')
call s:hi('DiagnosticUnderlineHint', '', '', '#49e9a6', 'undercurl', '', '')
call s:hi('htmlTag', '#e66533', '', '', '', '203', '')
call s:hi('htmlEndTag', '#e66533', '', '', '', '203', '')
call s:hi('htmlTagName', '#e66533', '', '', '', '203', '')
call s:hi('htmlArg', '#d5971a', '', '', '', '178', '')
call s:hi('cssBraces', '#c5c2d6', '', '', '', '251', '')
call s:hi('cssClassName', '#d67e5c', '', '', '', '173', '')
call s:hi('cssIdentifier', '#d67e5c', '', '', '', '173', '')
call s:hi('cssProp', '#e4b781', '', '', '', '222', '')
call s:hi('cssAttr', '#49e9a6', '', '', '', '85', '')
call s:hi('jsonKeyword', '#d5971a', '', '', '', '178', '')
call s:hi('jsonString', '#49e9a6', '', '', '', '85', '')
call s:hi('markdownHeadingDelimiter', '#df769b', '', '', '', '211', '')
call s:hi('markdownHeadingRule', '#716c93', '', '', '', '243', '')
call s:hi('markdownCode', '#e4b781', '', '', '', '222', '')
call s:hi('markdownCodeBlock', '#e4b781', '', '', '', '222', '')
call s:hi('markdownLinkText', '#49ace9', '', '', 'underline', '75', '')
call s:hi('markdownUrl', '#49e9a6', '', '', '', '85', '')

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
