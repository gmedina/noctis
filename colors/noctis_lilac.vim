" Noctis Lilac
" Generated from themes/lilac.json by scripts/build-vim.mjs.

highlight clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'noctis_lilac'
set background=dark

if has('termguicolors')
  set termguicolors
endif

let s:terminal_ansi_colors = ['#0c006b','#e34e1c','#00b368','#f49725','#0094f0','#ff5792','#00bdd6','#8ca6a6','#0f0080','#ff4000','#00d17a','#ff8c00','#0fa3ff','#ff6b9f','#00cbe6','#bbc3c4']
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

call s:hi('Normal', '#0c006b', '#f2f1f8', '', '')
call s:hi('ColorColumn', '', '#d4d0f1', '', '')
call s:hi('Conceal', '#0094f0', '', '', '')
call s:hi('Cursor', '#f2f1f8', '#5c49e9', '', '')
call s:hi('CursorColumn', '', '#e1def3', '', '')
call s:hi('CursorLine', '', '#e1def3', '', '')
call s:hi('CursorLineNr', '#7060eb', '#e1def3', '', 'bold')
call s:hi('Directory', '#00bdd6', '', '', '')
call s:hi('EndOfBuffer', '#f2f1f8', '#f2f1f8', '', '')
call s:hi('ErrorMsg', '#ff4000', '#f2f1f8', '', 'bold')
call s:hi('FoldColumn', '#9995b7', '#edecf8', '', '')
call s:hi('Folded', '#9995b7', '#edecf8', '', 'italic')
call s:hi('IncSearch', '#f2f1f8', '#8ce99a', '', 'bold')
call s:hi('LineNr', '#9d9ab1', '#f2f1f8', '', '')
call s:hi('MatchParen', '#7060eb', '#e2dff6', '', 'bold')
call s:hi('ModeMsg', '#00b368', '', '', 'bold')
call s:hi('MoreMsg', '#00b368', '', '', '')
call s:hi('NonText', '#d0cee0', '', '', '')
call s:hi('Pmenu', '#666284', '#dedbf5', '', '')
call s:hi('PmenuSbar', '', '#edecf8', '', '')
call s:hi('PmenuSel', '#0c006b', '#cac4f3', '', 'bold')
call s:hi('PmenuThumb', '', '#7060eb', '', '')
call s:hi('Question', '#00b368', '', '', '')
call s:hi('QuickFixLine', '', '#c6dde6', '', 'bold')
call s:hi('Search', '#0c006b', '#c6dde6', '', '')
call s:hi('SignColumn', '#9995b7', '#f2f1f8', '', '')
call s:hi('SpecialKey', '#d0cee0', '', '', '')
call s:hi('SpellBad', '', '', '#ff4000', 'undercurl')
call s:hi('SpellCap', '', '', '#00c6e0', 'undercurl')
call s:hi('SpellLocal', '', '', '#0094f0', 'undercurl')
call s:hi('SpellRare', '', '', '#e69533', 'undercurl')
call s:hi('StatusLine', '#7060eb', '#c1bbec', '', 'bold')
call s:hi('StatusLineNC', '#8b87ab', '#e2dff6', '', '')
call s:hi('StatusLineTerm', '#7060eb', '#c1bbec', '', 'bold')
call s:hi('StatusLineTermNC', '#8b87ab', '#e2dff6', '', '')
call s:hi('TabLine', '#75718e', '#e2dff6', '', '')
call s:hi('TabLineFill', '', '#e2dff6', '', '')
call s:hi('TabLineSel', '#7060eb', '#f2f1f8', '', 'bold')
call s:hi('Title', '#00bdd6', '', '', 'bold')
call s:hi('VertSplit', '#ece2c6', '#f2f1f8', '', '')
call s:hi('Visual', '', '#d5d1f2', '', '')
call s:hi('VisualNOS', '', '#d5d1f2', '', '')
call s:hi('WarningMsg', '#e69533', '', '', 'bold')
call s:hi('WildMenu', '#f2f1f8', '#7060eb', '', 'bold')
call s:hi('WinSeparator', '#ece2c6', '#f2f1f8', '', '')
call s:hi('Comment', '#9995b7', '', '', 'italic')
call s:hi('Constant', '#a88c00', '', '', '')
call s:hi('String', '#00b368', '', '', '')
call s:hi('Character', '#00b368', '', '', '')
call s:hi('Number', '#5842ff', '', '', '')
call s:hi('Boolean', '#5842ff', '', '', '')
call s:hi('Float', '#5842ff', '', '', '')
call s:hi('Identifier', '#fa8900', '', '', '')
call s:hi('Function', '#0095a8', '', '', '')
call s:hi('Statement', '#ff5792', '', '', '')
call s:hi('Conditional', '#ff5792', '', '', '')
call s:hi('Repeat', '#ff5792', '', '', '')
call s:hi('Label', '#ff5792', '', '', '')
call s:hi('Operator', '#ff5792', '', '', '')
call s:hi('Keyword', '#ff5792', '', '', '')
call s:hi('Exception', '#ff5792', '', '', '')
call s:hi('PreProc', '#0094f0', '', '', '')
call s:hi('Include', '#ff5792', '', '', '')
call s:hi('Define', '#ff5792', '', '', '')
call s:hi('Macro', '#0094f0', '', '', '')
call s:hi('PreCondit', '#ff5792', '', '', '')
call s:hi('Type', '#b3694d', '', '', '')
call s:hi('StorageClass', '#ff5792', '', '', '')
call s:hi('Structure', '#b3694d', '', '', '')
call s:hi('Typedef', '#b3694d', '', '', '')
call s:hi('Special', '#00bdd6', '', '', '')
call s:hi('SpecialChar', '#009456', '', '', '')
call s:hi('Tag', '#e64100', '', '', '')
call s:hi('Delimiter', '#0c006b', '', '', '')
call s:hi('SpecialComment', '#9995b7', '', '', 'bold,italic')
call s:hi('Debug', '#ff530f', '', '', '')
call s:hi('Underlined', '#0094f0', '', '', 'underline')
call s:hi('Ignore', '#9995b7', '', '', '')
call s:hi('Error', '#ff4000', '#f2f1f8', '', 'bold')
call s:hi('Todo', '#f2f1f8', '#e69533', '', 'bold')
call s:hi('DiffAdd', '#8ce99a', '#e2f0e9', '', '')
call s:hi('DiffChange', '#e9a149', '#f1e4dc', '', '')
call s:hi('DiffDelete', '#ff4000', '#f4d5d0', '', '')
call s:hi('DiffText', '#e9a149', '#efdbc7', '', 'bold')
call s:hi('GitGutterAdd', '#8ce99a', '#f2f1f8', '', '')
call s:hi('GitGutterChange', '#e9a149', '#f2f1f8', '', '')
call s:hi('GitGutterDelete', '#ff4000', '#f2f1f8', '', '')
call s:hi('DiagnosticError', '#ff4000', '', '', '')
call s:hi('DiagnosticWarn', '#e69533', '', '', '')
call s:hi('DiagnosticInfo', '#00c6e0', '', '', '')
call s:hi('DiagnosticHint', '#58cc6d', '', '', '')
call s:hi('DiagnosticUnderlineError', '', '', '#ff4000', 'undercurl')
call s:hi('DiagnosticUnderlineWarn', '', '', '#e69533', 'undercurl')
call s:hi('DiagnosticUnderlineInfo', '', '', '#00c6e0', 'undercurl')
call s:hi('DiagnosticUnderlineHint', '', '', '#58cc6d', 'undercurl')
call s:hi('htmlTag', '#e64100', '', '', '')
call s:hi('htmlEndTag', '#e64100', '', '', '')
call s:hi('htmlTagName', '#e64100', '', '', '')
call s:hi('htmlArg', '#a88c00', '', '', '')
call s:hi('cssBraces', '#0c006b', '', '', '')
call s:hi('cssClassName', '#b3694d', '', '', '')
call s:hi('cssIdentifier', '#b3694d', '', '', '')
call s:hi('cssProp', '#fa8900', '', '', '')
call s:hi('cssAttr', '#00b368', '', '', '')
call s:hi('jsonKeyword', '#a88c00', '', '', '')
call s:hi('jsonString', '#00b368', '', '', '')
call s:hi('markdownHeadingDelimiter', '#ff5792', '', '', '')
call s:hi('markdownHeadingRule', '#9995b7', '', '', '')
call s:hi('markdownCode', '#fa8900', '', '', '')
call s:hi('markdownCodeBlock', '#fa8900', '', '', '')
call s:hi('markdownLinkText', '#0094f0', '', '', 'underline')
call s:hi('markdownUrl', '#00b368', '', '', '')

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
