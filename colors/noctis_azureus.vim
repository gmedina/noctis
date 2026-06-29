" Noctis Azureus
" Generated from themes/azureus.json by scripts/build-vim.mjs.

highlight clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'noctis_azureus'
set background=dark

if has('termguicolors')
  set termguicolors
endif

let s:terminal_ansi_colors = ['#28353e','#e66533','#49e9a6','#e4b781','#49ace9','#df769b','#49d6e9','#aec3d0','#475e6c','#e97749','#60ebb1','#e69533','#60b6eb','#e798b3','#60dbeb','#becfda']
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

function! s:hi(group, fg, bg, sp, style) abort
  let l:cmd = 'highlight ' . a:group
  let l:cmd .= empty(a:fg) ? ' guifg=NONE' : ' guifg=' . a:fg
  let l:cmd .= empty(a:bg) ? ' guibg=NONE' : ' guibg=' . a:bg
  if !empty(a:sp)
    let l:cmd .= ' guisp=' . a:sp
  endif
  let l:cmd .= empty(a:style) ? ' gui=NONE cterm=NONE term=NONE' : ' gui=' . a:style . ' cterm=' . a:style . ' term=' . a:style
  execute l:cmd
endfunction

call s:hi('Normal', '#becfda', '#07273b', '', '')
call s:hi('ColorColumn', '', '#1a425b', '', '')
call s:hi('Conceal', '#49ace9', '', '', '')
call s:hi('Cursor', '#07273b', '#b3e2ff', '', '')
call s:hi('CursorColumn', '', '#003b5e', '', '')
call s:hi('CursorLine', '', '#003b5e', '', '')
call s:hi('CursorLineNr', '#61a6d1', '#003b5e', '', 'bold')
call s:hi('Directory', '#49d6e9', '', '', '')
call s:hi('EndOfBuffer', '#07273b', '#07273b', '', '')
call s:hi('ErrorMsg', '#e34e1c', '#07273b', '', 'bold')
call s:hi('FoldColumn', '#5988a6', '#062132', '', '')
call s:hi('Folded', '#5988a6', '#062132', '', 'italic')
call s:hi('IncSearch', '#07273b', '#40bf6a', '', 'bold')
call s:hi('LineNr', '#4d6c80', '#07273b', '', '')
call s:hi('MatchParen', '#1679b6', '#09324b', '', 'bold')
call s:hi('ModeMsg', '#49e9a6', '', '', 'bold')
call s:hi('MoreMsg', '#49e9a6', '', '', '')
call s:hi('NonText', '#274354', '', '', '')
call s:hi('Pmenu', '#9fb6c6', '#09334e', '', '')
call s:hi('PmenuSbar', '', '#062132', '', '')
call s:hi('PmenuSel', '#becfda', '#0c3f5f', '', 'bold')
call s:hi('PmenuThumb', '', '#1679b6', '', '')
call s:hi('Question', '#49e9a6', '', '', '')
call s:hi('QuickFixLine', '', '#0a4555', '', 'bold')
call s:hi('Search', '#becfda', '#0a4555', '', '')
call s:hi('SignColumn', '#5988a6', '#07273b', '', '')
call s:hi('SpecialKey', '#274354', '', '', '')
call s:hi('SpellBad', '', '', '#e34e1c', 'undercurl')
call s:hi('SpellCap', '', '', '#49ace9', 'undercurl')
call s:hi('SpellLocal', '', '', '#49ace9', 'undercurl')
call s:hi('SpellRare', '', '', '#e69533', 'undercurl')
call s:hi('StatusLine', '#49ace9', '#05456e', '', 'bold')
call s:hi('StatusLineNC', '#879dab', '#07273b', '', '')
call s:hi('StatusLineTerm', '#49ace9', '#05456e', '', 'bold')
call s:hi('StatusLineTermNC', '#879dab', '#07273b', '', '')
call s:hi('TabLine', '#9fb6c6', '#09334e', '', '')
call s:hi('TabLineFill', '', '#09334e', '', '')
call s:hi('TabLineSel', '#49ace9', '#07273b', '', 'bold')
call s:hi('Title', '#49d6e9', '', '', 'bold')
call s:hi('VertSplit', '#0f1315', '#07273b', '', '')
call s:hi('Visual', '', '#0c4264', '', '')
call s:hi('VisualNOS', '', '#0c4264', '', '')
call s:hi('WarningMsg', '#e69533', '', '', 'bold')
call s:hi('WildMenu', '#07273b', '#1679b6', '', 'bold')
call s:hi('WinSeparator', '#0f1315', '#07273b', '', '')
call s:hi('Comment', '#5988a6', '', '', 'italic')
call s:hi('Constant', '#d5971a', '', '', '')
call s:hi('String', '#49e9a6', '', '', '')
call s:hi('Character', '#49e9a6', '', '', '')
call s:hi('Number', '#7060eb', '', '', '')
call s:hi('Boolean', '#7060eb', '', '', '')
call s:hi('Float', '#7060eb', '', '', '')
call s:hi('Identifier', '#e4b781', '', '', '')
call s:hi('Function', '#16a3b6', '', '', '')
call s:hi('Statement', '#df769b', '', '', '')
call s:hi('Conditional', '#df769b', '', '', '')
call s:hi('Repeat', '#df769b', '', '', '')
call s:hi('Label', '#df769b', '', '', '')
call s:hi('Operator', '#df769b', '', '', '')
call s:hi('Keyword', '#df769b', '', '', '')
call s:hi('Exception', '#df769b', '', '', '')
call s:hi('PreProc', '#49ace9', '', '', '')
call s:hi('Include', '#df769b', '', '', '')
call s:hi('Define', '#df769b', '', '', '')
call s:hi('Macro', '#49ace9', '', '', '')
call s:hi('PreCondit', '#df769b', '', '', '')
call s:hi('Type', '#d67e5c', '', '', '')
call s:hi('StorageClass', '#df769b', '', '', '')
call s:hi('Structure', '#d67e5c', '', '', '')
call s:hi('Typedef', '#d67e5c', '', '', '')
call s:hi('Special', '#49d6e9', '', '', '')
call s:hi('SpecialChar', '#16b673', '', '', '')
call s:hi('Tag', '#e66533', '', '', '')
call s:hi('Delimiter', '#becfda', '', '', '')
call s:hi('SpecialComment', '#5988a6', '', '', 'bold,italic')
call s:hi('Debug', '#e3541c', '', '', '')
call s:hi('Underlined', '#49ace9', '', '', 'underline')
call s:hi('Ignore', '#5988a6', '', '', '')
call s:hi('Error', '#e34e1c', '#07273b', '', 'bold')
call s:hi('Todo', '#07273b', '#e69533', '', 'bold')
call s:hi('DiffAdd', '#8ce99a', '#1c464a', '', '')
call s:hi('DiffChange', '#ffc180', '#2f4046', '', '')
call s:hi('DiffDelete', '#e34e1c', '#2a2d36', '', '')
call s:hi('DiffText', '#ffc180', '#4c524e', '', 'bold')
call s:hi('GitGutterAdd', '#8ce99a', '#07273b', '', '')
call s:hi('GitGutterChange', '#ffc180', '#07273b', '', '')
call s:hi('GitGutterDelete', '#e34e1c', '#07273b', '', '')
call s:hi('DiagnosticError', '#e34e1c', '', '', '')
call s:hi('DiagnosticWarn', '#e69533', '', '', '')
call s:hi('DiagnosticInfo', '#49ace9', '', '', '')
call s:hi('DiagnosticHint', '#49e9a6', '', '', '')
call s:hi('DiagnosticUnderlineError', '', '', '#e34e1c', 'undercurl')
call s:hi('DiagnosticUnderlineWarn', '', '', '#e69533', 'undercurl')
call s:hi('DiagnosticUnderlineInfo', '', '', '#49ace9', 'undercurl')
call s:hi('DiagnosticUnderlineHint', '', '', '#49e9a6', 'undercurl')
call s:hi('htmlTag', '#e66533', '', '', '')
call s:hi('htmlEndTag', '#e66533', '', '', '')
call s:hi('htmlTagName', '#e66533', '', '', '')
call s:hi('htmlArg', '#d5971a', '', '', '')
call s:hi('cssBraces', '#becfda', '', '', '')
call s:hi('cssClassName', '#d67e5c', '', '', '')
call s:hi('cssIdentifier', '#d67e5c', '', '', '')
call s:hi('cssProp', '#e4b781', '', '', '')
call s:hi('cssAttr', '#49e9a6', '', '', '')
call s:hi('jsonKeyword', '#d5971a', '', '', '')
call s:hi('jsonString', '#49e9a6', '', '', '')
call s:hi('markdownHeadingDelimiter', '#df769b', '', '', '')
call s:hi('markdownHeadingRule', '#5988a6', '', '', '')
call s:hi('markdownCode', '#e4b781', '', '', '')
call s:hi('markdownCodeBlock', '#e4b781', '', '', '')
call s:hi('markdownLinkText', '#49ace9', '', '', 'underline')
call s:hi('markdownUrl', '#49e9a6', '', '', '')

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
