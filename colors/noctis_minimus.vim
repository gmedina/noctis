" Noctis Minimus
" Generated from themes/minimus.json by scripts/build-vim.mjs.

highlight clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'noctis_minimus'
set background=dark

if has('termguicolors')
  set termguicolors
endif

if get(g:, 'noctis_enable_cursorline', 1)
  set cursorline
endif

let s:terminal_ansi_colors = ['#182a35','#c08872','#72c09f','#c8a984','#6196b8','#c28097','#72b7c0','#c5cdd3','#425866','#ca8468','#84c8ab','#d1aa7b','#68a4ca','#c88da2','#84c0c8','#c5d1d3']
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

call s:hi('Normal', '#c5cdd3', '#1b2932', '', '', '252', '235')
call s:hi('ColorColumn', '', '#334652', '', '', '', '238')
call s:hi('Conceal', '#5998c0', '', '', '', '74', '')
call s:hi('Cursor', '#1b2932', '#b3d2e6', '', '', '235', '252')
call s:hi('lCursor', '#1b2932', '#b3d2e6', '', '', '235', '252')
call s:hi('CursorIM', '#1b2932', '#b3d2e6', '', '', '235', '252')
call s:hi('CursorColumn', '', '#1d3443', '', '', '', '236')
call s:hi('CursorLine', '', '#1d3443', '', '', '', '236')
call s:hi('CursorLineNr', '#6496b4', '#1d3443', '', 'bold', '74', '236')
call s:hi('CursorLineFold', '#6496b4', '#1d3443', '', '', '74', '236')
call s:hi('CursorLineSign', '#6496b4', '#1d3443', '', '', '74', '236')
call s:hi('Directory', '#72b7c0', '', '', '', '80', '')
call s:hi('EndOfBuffer', '#1b2932', '#1b2932', '', '', '235', '235')
call s:hi('ErrorMsg', '#b96346', '#1b2932', '', 'bold', '167', '235')
call s:hi('FoldColumn', '#5e7887', '#17232b', '', '', '243', '235')
call s:hi('Folded', '#5e7887', '#17232b', '', 'italic', '243', '235')
call s:hi('IncSearch', '#1b2932', '#72c09f', '', 'bold', '235', '79')
call s:hi('LineNr', '#5d6e79', '#1b2932', '', '', '242', '235')
call s:hi('MatchParen', '#496d83', '#21323d', '', 'bold', '60', '236')
call s:hi('ModeMsg', '#72c09f', '', '', 'bold', '79', '')
call s:hi('MoreMsg', '#72c09f', '', '', '', '79', '')
call s:hi('NonText', '#39454d', '', '', '', '238', '')
call s:hi('Pmenu', '#96a8b6', '#202e37', '', '', '248', '236')
call s:hi('PmenuSbar', '', '#17232b', '', '', '', '235')
call s:hi('PmenuSel', '#c5cdd3', '#2c414e', '', 'bold', '252', '237')
call s:hi('PmenuThumb', '', '#496d83', '', '', '', '60')
call s:hi('Question', '#72c09f', '', '', '', '79', '')
call s:hi('QuickFixLine', '', '#154650', '', 'bold', '', '23')
call s:hi('Search', '#c5cdd3', '#154650', '', '', '252', '23')
call s:hi('SignColumn', '#5e7887', '#1b2932', '', '', '243', '235')
call s:hi('SpecialKey', '#39454d', '', '', '', '238', '')
call s:hi('SpellBad', '', '', '#b96346', 'undercurl', '', '')
call s:hi('SpellCap', '', '', '#5998c0', 'undercurl', '', '')
call s:hi('SpellLocal', '', '', '#5998c0', 'undercurl', '', '')
call s:hi('SpellRare', '', '', '#c09159', 'undercurl', '', '')
call s:hi('StatusLine', '#5998c0', '#294557', '', 'bold', '74', '238')
call s:hi('StatusLineNC', '#98a6ae', '#1b2932', '', '', '248', '235')
call s:hi('StatusLineTerm', '#5998c0', '#294557', '', 'bold', '74', '238')
call s:hi('StatusLineTermNC', '#98a6ae', '#1b2932', '', '', '248', '235')
call s:hi('TabLine', '#96a8b6', '#202e37', '', '', '248', '236')
call s:hi('TabLineFill', '', '#24333d', '', '', '', '236')
call s:hi('TabLineSel', '#5998c0', '#1b2932', '', 'bold', '74', '235')
call s:hi('Title', '#72b7c0', '', '', 'bold', '80', '')
call s:hi('VertSplit', '#101213', '#1b2932', '', '', '233', '235')
call s:hi('Visual', '', '#2a404d', '', '', '', '237')
call s:hi('VisualNOS', '', '#2a404d', '', '', '', '237')
call s:hi('WarningMsg', '#c09159', '', '', 'bold', '179', '')
call s:hi('WildMenu', '#1b2932', '#496d83', '', 'bold', '235', '60')
call s:hi('WinSeparator', '#101213', '#1b2932', '', '', '233', '235')
call s:hi('Comment', '#5e7887', '', '', 'italic', '243', '')
call s:hi('Constant', '#a88c00', '', '', '', '142', '')
call s:hi('String', '#72c09f', '', '', '', '79', '')
call s:hi('Character', '#72c09f', '', '', '', '79', '')
call s:hi('Number', '#7068b1', '', '', '', '62', '')
call s:hi('Boolean', '#7068b1', '', '', '', '62', '')
call s:hi('Float', '#7068b1', '', '', '', '62', '')
call s:hi('Identifier', '#d3b692', '', '', '', '187', '')
call s:hi('Function', '#3f848d', '', '', '', '67', '')
call s:hi('Statement', '#c88da2', '', '', '', '181', '')
call s:hi('Conditional', '#c88da2', '', '', '', '181', '')
call s:hi('Repeat', '#c88da2', '', '', '', '181', '')
call s:hi('Label', '#c88da2', '', '', '', '181', '')
call s:hi('Operator', '#c88da2', '', '', '', '181', '')
call s:hi('Keyword', '#c88da2', '', '', '', '181', '')
call s:hi('Exception', '#c88da2', '', '', '', '181', '')
call s:hi('PreProc', '#5998c0', '', '', '', '74', '')
call s:hi('Include', '#c88da2', '', '', '', '181', '')
call s:hi('Define', '#c88da2', '', '', '', '181', '')
call s:hi('Macro', '#5998c0', '', '', '', '74', '')
call s:hi('PreCondit', '#c88da2', '', '', '', '181', '')
call s:hi('Type', '#be856f', '', '', '', '173', '')
call s:hi('StorageClass', '#c88da2', '', '', '', '181', '')
call s:hi('Structure', '#be856f', '', '', '', '173', '')
call s:hi('Typedef', '#be856f', '', '', '', '173', '')
call s:hi('Special', '#72b7c0', '', '', '', '80', '')
call s:hi('SpecialChar', '#3f8d6c', '', '', '', '71', '')
call s:hi('Tag', '#c37455', '', '', '', '173', '')
call s:hi('Delimiter', '#c5cdd3', '', '', '', '252', '')
call s:hi('SpecialComment', '#5e7887', '', '', 'bold,italic', '243', '')
call s:hi('Debug', '#b16a4e', '', '', '', '167', '')
call s:hi('Underlined', '#5998c0', '', '', 'underline', '74', '')
call s:hi('Ignore', '#5e7887', '', '', '', '243', '')
call s:hi('Error', '#b96346', '#1b2932', '', 'bold', '167', '235')
call s:hi('Todo', '#1b2932', '#c09159', '', 'bold', '235', '179')
call s:hi('DiffAdd', '#a0d4a8', '#304445', '', '', '151', '237')
call s:hi('DiffChange', '#dfc09f', '#3a4143', '', '', '223', '238')
call s:hi('DiffDelete', '#b96346', '#343235', '', '', '167', '236')
call s:hi('DiffText', '#dfc09f', '#525351', '', 'bold', '223', '239')
call s:hi('GitGutterAdd', '#a0d4a8', '#1b2932', '', '', '151', '235')
call s:hi('GitGutterChange', '#dfc09f', '#1b2932', '', '', '223', '235')
call s:hi('GitGutterDelete', '#b96346', '#1b2932', '', '', '167', '235')
call s:hi('TermCursor', '#1b2932', '#b3d2e6', '', '', '235', '252')
call s:hi('TermCursorNC', '#1d3544', '#1d3443', '', '', '236', '236')
call s:hi('DiagnosticError', '#b96346', '', '', '', '167', '')
call s:hi('DiagnosticWarn', '#c09159', '', '', '', '179', '')
call s:hi('DiagnosticInfo', '#5998c0', '', '', '', '74', '')
call s:hi('DiagnosticHint', '#72c09f', '', '', '', '79', '')
call s:hi('DiagnosticUnderlineError', '', '', '#b96346', 'undercurl', '', '')
call s:hi('DiagnosticUnderlineWarn', '', '', '#c09159', 'undercurl', '', '')
call s:hi('DiagnosticUnderlineInfo', '', '', '#5998c0', 'undercurl', '', '')
call s:hi('DiagnosticUnderlineHint', '', '', '#72c09f', 'undercurl', '', '')
call s:hi('htmlTag', '#c37455', '', '', '', '173', '')
call s:hi('htmlEndTag', '#c37455', '', '', '', '173', '')
call s:hi('htmlTagName', '#c37455', '', '', '', '173', '')
call s:hi('htmlArg', '#a88c00', '', '', '', '142', '')
call s:hi('cssBraces', '#c5cdd3', '', '', '', '252', '')
call s:hi('cssClassName', '#be856f', '', '', '', '173', '')
call s:hi('cssIdentifier', '#be856f', '', '', '', '173', '')
call s:hi('cssProp', '#d3b692', '', '', '', '187', '')
call s:hi('cssAttr', '#72c09f', '', '', '', '79', '')
call s:hi('jsonKeyword', '#a88c00', '', '', '', '142', '')
call s:hi('jsonString', '#72c09f', '', '', '', '79', '')
call s:hi('markdownHeadingDelimiter', '#c88da2', '', '', '', '181', '')
call s:hi('markdownHeadingRule', '#5e7887', '', '', '', '243', '')
call s:hi('markdownCode', '#d3b692', '', '', '', '187', '')
call s:hi('markdownCodeBlock', '#d3b692', '', '', '', '187', '')
call s:hi('markdownLinkText', '#5998c0', '', '', 'underline', '74', '')
call s:hi('markdownUrl', '#72c09f', '', '', '', '79', '')

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
