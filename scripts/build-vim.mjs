import fs from "fs/promises";
import path from "path";

const ROOT = new URL("..", import.meta.url);
const THEMES_DIR = new URL("themes/", ROOT);
const COLORS_DIR = new URL("colors/", ROOT);
const AIRLINE_THEMES_DIR = new URL("autoload/airline/themes/", ROOT);

const VARIANTS = [
  "noctis",
  "azureus",
  "bordo",
  "minimus",
  "obscuro",
  "sereno",
  "uva",
  "viola",
  "lux",
  "hibernus",
  "lilac",
];

const SYNTAX_COLOR_NAMES = [
  "COMMENT",
  "TEXT",
  "KEYWORD",
  "VARIABLE",
  "ANNOTATION",
  "CONSTANT",
  "TAG",
  "STRING",
  "STRINGINTERPOLATED",
  "NUMBER",
  "FUNCTION",
  "SUPPORT",
  "MISC",
  "INVALID",
];

const ANSI_INDEX = {
  "terminal.ansiBlack": 0,
  "terminal.ansiRed": 1,
  "terminal.ansiGreen": 2,
  "terminal.ansiYellow": 3,
  "terminal.ansiBlue": 4,
  "terminal.ansiMagenta": 5,
  "terminal.ansiCyan": 6,
  "terminal.ansiWhite": 7,
  "terminal.ansiBrightBlack": 8,
  "terminal.ansiBrightRed": 9,
  "terminal.ansiBrightGreen": 10,
  "terminal.ansiBrightYellow": 11,
  "terminal.ansiBrightBlue": 12,
  "terminal.ansiBrightMagenta": 13,
  "terminal.ansiBrightCyan": 14,
  "terminal.ansiBrightWhite": 15,
};

function rgb(hex) {
  const normalized = stripAlpha(hex).replace("#", "");
  return [
    parseInt(normalized.slice(0, 2), 16),
    parseInt(normalized.slice(2, 4), 16),
    parseInt(normalized.slice(4, 6), 16),
  ];
}

function stripAlpha(hex) {
  if (!hex || hex === "NONE") {
    return "NONE";
  }

  return hex.slice(0, 7);
}

function opaque(hex, background) {
  if (!hex || hex === "NONE") {
    return "NONE";
  }

  if (hex.length === 9 && background && background !== "NONE") {
    return blend(hex.slice(0, 7), background, parseInt(hex.slice(7, 9), 16) / 255);
  }

  return stripAlpha(hex);
}

function blend(foreground, background, alpha) {
  const [fr, fg, fb] = rgb(foreground);
  const [br, bg, bb] = rgb(background);
  const mix = (front, back) =>
    Math.round(front * alpha + back * (1 - alpha))
      .toString(16)
      .padStart(2, "0");

  return `#${mix(fr, br)}${mix(fg, bg)}${mix(fb, bb)}`;
}

function color(colors, key, fallback = "NONE") {
  return stripAlpha(colors[key] || fallback);
}

function colorOn(colors, key, background, fallback = "NONE") {
  return opaque(colors[key] || fallback, background);
}

function syntaxPalette(theme) {
  const palette = {};

  for (const tokenColor of theme.tokenColors) {
    if (!SYNTAX_COLOR_NAMES.includes(tokenColor.name)) {
      continue;
    }

    const key = tokenColor.name
      .toLowerCase()
      .replace("stringinterpolated", "string_interpolated")
      .replaceAll(" ", "_");
    palette[key] = stripAlpha(tokenColor.settings.foreground);
  }

  return palette;
}

function terminalColors(colors) {
  const terminal = Array(16).fill("NONE");
  for (const [key, index] of Object.entries(ANSI_INDEX)) {
    terminal[index] = color(colors, key);
  }
  return terminal;
}

function xtermChannel(value) {
  if (value < 48) return 0;
  if (value < 115) return 1;
  return Math.min(5, Math.round((value - 35) / 40));
}

function xterm256(hex) {
  if (!hex || hex === "NONE") {
    return "";
  }

  const [red, green, blue] = rgb(hex);
  const grayAverage = (red + green + blue) / 3;
  const grayIndex =
    grayAverage > 238 ? 23 : grayAverage < 8 ? 0 : Math.round((grayAverage - 8) / 10);
  const grayLevel = grayIndex === 0 ? 8 : 8 + grayIndex * 10;
  const colorIndex =
    16 + 36 * xtermChannel(red) + 6 * xtermChannel(green) + xtermChannel(blue);
  const colorLevel = [0, 95, 135, 175, 215, 255];
  const [mappedRed, mappedGreen, mappedBlue] = [
    colorLevel[xtermChannel(red)],
    colorLevel[xtermChannel(green)],
    colorLevel[xtermChannel(blue)],
  ];
  const colorDistance =
    (mappedRed - red) ** 2 + (mappedGreen - green) ** 2 + (mappedBlue - blue) ** 2;
  const grayDistance =
    (grayLevel - red) ** 2 + (grayLevel - green) ** 2 + (grayLevel - blue) ** 2;

  return grayDistance < colorDistance ? 232 + grayIndex : colorIndex;
}

function vimString(value) {
  return value.replaceAll("'", "''");
}

function highlight(group, options) {
  const parts = [`call s:hi('${group}'`];

  for (const key of ["fg", "bg", "sp", "style"]) {
    if (options[key]) {
      parts.push(`, '${vimString(options[key])}'`);
    } else {
      parts.push(", ''");
    }
  }

  parts.push(")");
  return parts.join("");
}

function link(from, to) {
  return `highlight! link ${from} ${to}`;
}

function airlineColor(foreground, background, style = "") {
  return `['${foreground}', '${background}', ${xterm256(foreground) || "''"}, ${xterm256(background) || "''"}, '${style}']`;
}

function buildAirlineTheme(name, theme) {
  const colors = theme.colors;
  const palette = syntaxPalette(theme);
  const background = color(colors, "editor.background");
  const foreground = color(colors, "editor.foreground", palette.text);
  const statusBg = color(colors, "statusBar.background", color(colors, "sideBar.background", background));
  const statusActiveBg = colorOn(
    colors,
    "statusBarItem.activeBackground",
    statusBg,
    colorOn(colors, "statusBarItem.hoverBackground", statusBg, blend(foreground, statusBg, 0.14))
  );
  const statusHoverBg = colorOn(colors, "statusBarItem.hoverBackground", statusBg, statusActiveBg);
  const statusProminentBg = colorOn(colors, "statusBarItem.prominentBackground", statusBg, statusBg);
  const inactiveFg = color(colors, "statusBar.noFolderForeground", palette.comment);
  const inactiveBg = color(colors, "statusBar.noFolderBackground", statusBg);
  const sectionFg = theme.type === "light" ? background : background;
  const schemeName = name === "noctis" ? "noctis" : `noctis_${name}`;
  const themeVar = `g:airline#themes#${schemeName}#palette`;

  const modeColors = {
    normal: color(colors, "tab.activeForeground", color(colors, "statusBar.foreground", palette.support)),
    insert: palette.string,
    replace: color(colors, "editorError.foreground", palette.invalid),
    visual: palette.keyword,
    terminal: palette.function,
    commandline: palette.number,
  };

  const base = {
    normal: [
      airlineColor(sectionFg, modeColors.normal, "bold"),
      airlineColor(foreground, statusHoverBg),
      airlineColor(foreground, statusActiveBg),
    ],
    insert: [
      airlineColor(sectionFg, modeColors.insert, "bold"),
      airlineColor(foreground, statusHoverBg),
      airlineColor(foreground, statusActiveBg),
    ],
    replace: [
      airlineColor(sectionFg, modeColors.replace, "bold"),
      airlineColor(foreground, statusHoverBg),
      airlineColor(foreground, statusActiveBg),
    ],
    visual: [
      airlineColor(sectionFg, modeColors.visual, "bold"),
      airlineColor(foreground, statusHoverBg),
      airlineColor(foreground, statusActiveBg),
    ],
    terminal: [
      airlineColor(sectionFg, modeColors.terminal, "bold"),
      airlineColor(foreground, statusHoverBg),
      airlineColor(foreground, statusActiveBg),
    ],
    commandline: [
      airlineColor(sectionFg, modeColors.commandline, "bold"),
      airlineColor(foreground, statusHoverBg),
      airlineColor(foreground, statusActiveBg),
    ],
    inactive: [
      airlineColor(inactiveFg, inactiveBg),
      airlineColor(inactiveFg, statusBg),
      airlineColor(inactiveFg, statusBg),
    ],
  };

  const modified = airlineColor(palette.variable, statusActiveBg);
  const warning = airlineColor(background, color(colors, "editorWarning.foreground", palette.variable), "bold");
  const error = airlineColor(background, color(colors, "editorError.foreground", palette.invalid), "bold");
  const paste = airlineColor(background, palette.constant, "bold");
  const accentRed = `[ '${color(colors, "editorError.foreground", palette.invalid)}', '', ${xterm256(color(colors, "editorError.foreground", palette.invalid))}, '', '' ]`;

  const modeBlock = (mode) => `let ${themeVar}.${mode} = airline#themes#generate_color_map(${base[mode].join(", ")})`;
  const modifiedBlock = (mode) => `let ${themeVar}.${mode}_modified = {
      \\ 'airline_c': ${modified},
      \\ }`;

  return `" ${theme.name} airline theme
" Generated from themes/${name}.json by scripts/build-vim.mjs.

let ${themeVar} = {}

${modeBlock("normal")}
${modifiedBlock("normal")}

${modeBlock("insert")}
${modifiedBlock("insert")}
let ${themeVar}.insert_paste = {
      \\ 'airline_a': ${paste},
      \\ 'airline_z': ${paste},
      \\ }

${modeBlock("replace")}
${modifiedBlock("replace")}

${modeBlock("visual")}
${modifiedBlock("visual")}

${modeBlock("terminal")}

${modeBlock("commandline")}

${modeBlock("inactive")}
let ${themeVar}.inactive_modified = {
      \\ 'airline_c': ${airlineColor(palette.variable, statusBg)},
      \\ }

let ${themeVar}.accents = {
      \\ 'red': ${accentRed},
      \\ }

for s:mode in ['normal', 'normal_modified', 'insert', 'insert_modified', 'visual', 'visual_modified', 'replace', 'replace_modified']
  let ${themeVar}[s:mode].airline_warning = ${warning}
  let ${themeVar}[s:mode].airline_error = ${error}
endfor

if get(g:, 'loaded_ctrlp', 0)
  let ${themeVar}.ctrlp = airline#extensions#ctrlp#generate_color_map(
        \\ ${airlineColor(foreground, statusProminentBg)},
        \\ ${airlineColor(foreground, statusHoverBg)},
        \\ ${airlineColor(background, modeColors.normal, "bold")})
endif
`;
}

function buildTheme(name, theme) {
  const colors = theme.colors;
  const palette = syntaxPalette(theme);
  const background = color(colors, "editor.background");
  const foreground = color(colors, "editor.foreground", palette.text);
  const line = colorOn(colors, "editor.lineHighlightBackground", background, blend(foreground, background, 0.12));
  const visual = colorOn(colors, "editor.selectionBackground", background, blend(foreground, background, 0.22));
  const statusBg = color(colors, "statusBar.background", color(colors, "sideBar.background", background));
  const statusActiveBg = colorOn(
    colors,
    "statusBarItem.activeBackground",
    statusBg,
    colorOn(colors, "statusBarItem.hoverBackground", statusBg, blend(foreground, statusBg, 0.14))
  );
  const statusActiveFg = color(colors, "tab.activeForeground", color(colors, "statusBar.foreground", foreground));
  const statusInactiveFg = color(colors, "statusBar.noFolderForeground", palette.comment);
  const sideBar = color(colors, "sideBar.background", statusBg);
  const widget = color(colors, "editorWidget.background", sideBar);
  const border = color(colors, "editorWidget.border", color(colors, "editorGroup.border", line));
  const cursor = color(colors, "editorCursor.foreground", foreground);
  const accent = color(colors, "activityBar.foreground", palette.support);
  const error = color(colors, "editorError.foreground", palette.invalid);
  const warning = color(colors, "editorWarning.foreground", palette.variable);
  const info = color(colors, "editorInfo.foreground", palette.support);
  const diffAdd = color(colors, "editorGutter.addedBackground", palette.string);
  const diffDelete = color(colors, "editorGutter.deletedBackground", palette.invalid);
  const diffChange = color(colors, "editorGutter.modifiedBackground", palette.variable);
  const terminal = terminalColors(colors);
  const backgroundMode = theme.type === "light" ? "light" : "dark";
  const schemeName = name === "noctis" ? "noctis" : `noctis_${name}`;

  const groups = [
    ["Normal", { fg: foreground, bg: background }],
    ["ColorColumn", { bg: color(colors, "editorRuler.foreground", line) }],
    ["Conceal", { fg: palette.misc }],
    ["Cursor", { fg: background, bg: cursor }],
    ["CursorColumn", { bg: line }],
    ["CursorLine", { bg: line }],
    ["CursorLineNr", { fg: color(colors, "editorLineNumber.activeForeground", accent), bg: line, style: "bold" }],
    ["Directory", { fg: palette.support }],
    ["EndOfBuffer", { fg: background, bg: background }],
    ["ErrorMsg", { fg: error, bg: background, style: "bold" }],
    ["FoldColumn", { fg: palette.comment, bg: sideBar }],
    ["Folded", { fg: palette.comment, bg: sideBar, style: "italic" }],
    ["IncSearch", { fg: background, bg: color(colors, "editor.findMatchBackground", palette.string), style: "bold" }],
    ["LineNr", { fg: color(colors, "editorLineNumber.foreground", palette.comment), bg: background }],
    ["MatchParen", { fg: accent, bg: colorOn(colors, "editorBracketMatch.background", background, line), style: "bold" }],
    ["ModeMsg", { fg: palette.string, style: "bold" }],
    ["MoreMsg", { fg: palette.string }],
    ["NonText", { fg: colorOn(colors, "editorWhitespace.foreground", background, palette.comment) }],
    ["Pmenu", { fg: color(colors, "editorSuggestWidget.foreground", foreground), bg: widget }],
    ["PmenuSbar", { bg: sideBar }],
    ["PmenuSel", { fg: foreground, bg: color(colors, "editorSuggestWidget.selectedBackground", line), style: "bold" }],
    ["PmenuThumb", { bg: accent }],
    ["Question", { fg: palette.string }],
    ["QuickFixLine", { bg: colorOn(colors, "editor.findMatchHighlightBackground", background, line), style: "bold" }],
    ["Search", { fg: foreground, bg: colorOn(colors, "editor.findMatchHighlightBackground", background, line) }],
    ["SignColumn", { fg: palette.comment, bg: background }],
    ["SpecialKey", { fg: colorOn(colors, "editorWhitespace.foreground", background, palette.comment) }],
    ["SpellBad", { sp: error, style: "undercurl" }],
    ["SpellCap", { sp: info, style: "undercurl" }],
    ["SpellLocal", { sp: palette.misc, style: "undercurl" }],
    ["SpellRare", { sp: warning, style: "undercurl" }],
    ["StatusLine", { fg: statusActiveFg, bg: statusActiveBg, style: "bold" }],
    ["StatusLineNC", { fg: statusInactiveFg, bg: statusBg }],
    ["StatusLineTerm", { fg: statusActiveFg, bg: statusActiveBg, style: "bold" }],
    ["StatusLineTermNC", { fg: statusInactiveFg, bg: statusBg }],
    ["TabLine", { fg: color(colors, "tab.inactiveForeground", palette.comment), bg: color(colors, "tab.inactiveBackground", statusBg) }],
    ["TabLineFill", { bg: color(colors, "editorGroupHeader.tabsBackground", statusBg) }],
    ["TabLineSel", { fg: color(colors, "tab.activeForeground", accent), bg: background, style: "bold" }],
    ["Title", { fg: palette.support, style: "bold" }],
    ["VertSplit", { fg: border, bg: background }],
    ["Visual", { bg: visual }],
    ["VisualNOS", { bg: visual }],
    ["WarningMsg", { fg: warning, style: "bold" }],
    ["WildMenu", { fg: background, bg: accent, style: "bold" }],
    ["WinSeparator", { fg: border, bg: background }],
    ["Comment", { fg: palette.comment, style: "italic" }],
    ["Constant", { fg: palette.constant }],
    ["String", { fg: palette.string }],
    ["Character", { fg: palette.string }],
    ["Number", { fg: palette.number }],
    ["Boolean", { fg: palette.number }],
    ["Float", { fg: palette.number }],
    ["Identifier", { fg: palette.variable }],
    ["Function", { fg: palette.function }],
    ["Statement", { fg: palette.keyword }],
    ["Conditional", { fg: palette.keyword }],
    ["Repeat", { fg: palette.keyword }],
    ["Label", { fg: palette.keyword }],
    ["Operator", { fg: palette.keyword }],
    ["Keyword", { fg: palette.keyword }],
    ["Exception", { fg: palette.keyword }],
    ["PreProc", { fg: palette.misc }],
    ["Include", { fg: palette.keyword }],
    ["Define", { fg: palette.keyword }],
    ["Macro", { fg: palette.misc }],
    ["PreCondit", { fg: palette.keyword }],
    ["Type", { fg: palette.annotation }],
    ["StorageClass", { fg: palette.keyword }],
    ["Structure", { fg: palette.annotation }],
    ["Typedef", { fg: palette.annotation }],
    ["Special", { fg: palette.support }],
    ["SpecialChar", { fg: palette.string_interpolated }],
    ["Tag", { fg: palette.tag }],
    ["Delimiter", { fg: palette.text }],
    ["SpecialComment", { fg: palette.comment, style: "bold,italic" }],
    ["Debug", { fg: palette.invalid }],
    ["Underlined", { fg: palette.misc, style: "underline" }],
    ["Ignore", { fg: palette.comment }],
    ["Error", { fg: error, bg: background, style: "bold" }],
    ["Todo", { fg: background, bg: warning, style: "bold" }],
    ["DiffAdd", { fg: diffAdd, bg: blend(diffAdd, background, 0.16) }],
    ["DiffChange", { fg: diffChange, bg: blend(diffChange, background, 0.16) }],
    ["DiffDelete", { fg: diffDelete, bg: blend(diffDelete, background, 0.16) }],
    ["DiffText", { fg: diffChange, bg: blend(diffChange, background, 0.28), style: "bold" }],
    ["GitGutterAdd", { fg: diffAdd, bg: background }],
    ["GitGutterChange", { fg: diffChange, bg: background }],
    ["GitGutterDelete", { fg: diffDelete, bg: background }],
    ["DiagnosticError", { fg: error }],
    ["DiagnosticWarn", { fg: warning }],
    ["DiagnosticInfo", { fg: info }],
    ["DiagnosticHint", { fg: color(colors, "editorHint.foreground", palette.string) }],
    ["DiagnosticUnderlineError", { sp: error, style: "undercurl" }],
    ["DiagnosticUnderlineWarn", { sp: warning, style: "undercurl" }],
    ["DiagnosticUnderlineInfo", { sp: info, style: "undercurl" }],
    ["DiagnosticUnderlineHint", { sp: color(colors, "editorHint.foreground", palette.string), style: "undercurl" }],
    ["htmlTag", { fg: palette.tag }],
    ["htmlEndTag", { fg: palette.tag }],
    ["htmlTagName", { fg: palette.tag }],
    ["htmlArg", { fg: palette.constant }],
    ["cssBraces", { fg: palette.text }],
    ["cssClassName", { fg: palette.annotation }],
    ["cssIdentifier", { fg: palette.annotation }],
    ["cssProp", { fg: palette.variable }],
    ["cssAttr", { fg: palette.string }],
    ["jsonKeyword", { fg: palette.constant }],
    ["jsonString", { fg: palette.string }],
    ["markdownHeadingDelimiter", { fg: palette.keyword }],
    ["markdownHeadingRule", { fg: palette.comment }],
    ["markdownCode", { fg: palette.variable }],
    ["markdownCodeBlock", { fg: palette.variable }],
    ["markdownLinkText", { fg: palette.misc, style: "underline" }],
    ["markdownUrl", { fg: palette.string }],
  ];

  const links = [
    ["NvimInternalError", "Error"],
    ["NormalFloat", "Pmenu"],
    ["FloatBorder", "VertSplit"],
    ["DiagnosticFloatingError", "DiagnosticError"],
    ["DiagnosticFloatingWarn", "DiagnosticWarn"],
    ["DiagnosticFloatingInfo", "DiagnosticInfo"],
    ["DiagnosticFloatingHint", "DiagnosticHint"],
    ["DiagnosticSignError", "DiagnosticError"],
    ["DiagnosticSignWarn", "DiagnosticWarn"],
    ["DiagnosticSignInfo", "DiagnosticInfo"],
    ["DiagnosticSignHint", "DiagnosticHint"],
    ["LspReferenceText", "Visual"],
    ["LspReferenceRead", "Visual"],
    ["LspReferenceWrite", "Visual"],
    ["TSError", "Error"],
    ["TSPunctDelimiter", "Delimiter"],
    ["TSPunctBracket", "Delimiter"],
    ["TSPunctSpecial", "Special"],
    ["TSConstant", "Constant"],
    ["TSConstBuiltin", "Constant"],
    ["TSConstMacro", "Macro"],
    ["TSString", "String"],
    ["TSStringRegex", "String"],
    ["TSStringEscape", "SpecialChar"],
    ["TSCharacter", "Character"],
    ["TSNumber", "Number"],
    ["TSBoolean", "Boolean"],
    ["TSFloat", "Float"],
    ["TSFunction", "Function"],
    ["TSFuncBuiltin", "Function"],
    ["TSFuncMacro", "Macro"],
    ["TSParameter", "Identifier"],
    ["TSParameterReference", "Identifier"],
    ["TSMethod", "Function"],
    ["TSField", "Identifier"],
    ["TSProperty", "Identifier"],
    ["TSConstructor", "Special"],
    ["TSConditional", "Conditional"],
    ["TSRepeat", "Repeat"],
    ["TSLabel", "Label"],
    ["TSKeyword", "Keyword"],
    ["TSKeywordFunction", "Keyword"],
    ["TSKeywordOperator", "Operator"],
    ["TSOperator", "Operator"],
    ["TSException", "Exception"],
    ["TSType", "Type"],
    ["TSTypeBuiltin", "Type"],
    ["TSStructure", "Structure"],
    ["TSInclude", "Include"],
    ["TSVariable", "Identifier"],
    ["TSVariableBuiltin", "Special"],
    ["TSText", "Normal"],
    ["TSStrong", "Normal"],
    ["TSEmphasis", "Normal"],
    ["TSUnderline", "Underlined"],
    ["TSTitle", "Title"],
    ["TSLiteral", "String"],
    ["TSURI", "Underlined"],
    ["TSComment", "Comment"],
    ["TSTag", "Tag"],
    ["TSTagDelimiter", "Delimiter"],
    ["TSTagAttribute", "Identifier"],
  ];

  const nvimLinks = [
    ["@error", "Error"],
    ["@punctuation.delimiter", "Delimiter"],
    ["@punctuation.bracket", "Delimiter"],
    ["@punctuation.special", "Special"],
    ["@constant", "Constant"],
    ["@constant.builtin", "Constant"],
    ["@constant.macro", "Macro"],
    ["@string", "String"],
    ["@string.regex", "String"],
    ["@string.escape", "SpecialChar"],
    ["@character", "Character"],
    ["@number", "Number"],
    ["@boolean", "Boolean"],
    ["@float", "Float"],
    ["@function", "Function"],
    ["@function.builtin", "Function"],
    ["@function.macro", "Macro"],
    ["@parameter", "Identifier"],
    ["@method", "Function"],
    ["@field", "Identifier"],
    ["@property", "Identifier"],
    ["@constructor", "Special"],
    ["@conditional", "Conditional"],
    ["@repeat", "Repeat"],
    ["@label", "Label"],
    ["@keyword", "Keyword"],
    ["@keyword.function", "Keyword"],
    ["@keyword.operator", "Operator"],
    ["@operator", "Operator"],
    ["@exception", "Exception"],
    ["@type", "Type"],
    ["@type.builtin", "Type"],
    ["@namespace", "Identifier"],
    ["@include", "Include"],
    ["@variable", "Identifier"],
    ["@variable.builtin", "Special"],
    ["@text", "Normal"],
    ["@text.strong", "Normal"],
    ["@text.emphasis", "Normal"],
    ["@text.underline", "Underlined"],
    ["@text.title", "Title"],
    ["@text.literal", "String"],
    ["@text.uri", "Underlined"],
    ["@comment", "Comment"],
    ["@tag", "Tag"],
    ["@tag.delimiter", "Delimiter"],
    ["@tag.attribute", "Identifier"],
  ];

  return `" ${theme.name}
" Generated from themes/${name}.json by scripts/build-vim.mjs.

highlight clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = '${schemeName}'
set background=${backgroundMode}

if has('termguicolors')
  set termguicolors
endif

let s:terminal_ansi_colors = ${JSON.stringify(terminal).replaceAll('"', "'")}
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

${groups.map(([group, options]) => highlight(group, options)).join("\n")}

${links.map(([from, to]) => link(from, to)).join("\n")}

if has('nvim')
${nvimLinks.map(([from, to]) => `  ${link(from, to)}`).join("\n")}
endif
`;
}

await fs.mkdir(COLORS_DIR, { recursive: true });
await fs.mkdir(AIRLINE_THEMES_DIR, { recursive: true });

for (const variant of VARIANTS) {
  const themePath = new URL(`${variant}.json`, THEMES_DIR);
  const theme = JSON.parse(await fs.readFile(themePath, "utf8"));
  const filename = variant === "noctis" ? "noctis.vim" : `noctis_${variant}.vim`;
  await fs.writeFile(new URL(filename, COLORS_DIR), buildTheme(variant, theme));
  console.log(`built ${path.join("colors", filename)}`);

  const airlineFilename = variant === "noctis" ? "noctis.vim" : `noctis_${variant}.vim`;
  await fs.writeFile(new URL(airlineFilename, AIRLINE_THEMES_DIR), buildAirlineTheme(variant, theme));
  console.log(`built ${path.join("autoload/airline/themes", airlineFilename)}`);
}
