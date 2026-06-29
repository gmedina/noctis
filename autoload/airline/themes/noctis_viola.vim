" Noctis Viola airline theme
" Generated from themes/viola.json by scripts/build-vim.mjs.

let g:airline#themes#noctis_viola#palette = {}

let g:airline#themes#noctis_viola#palette.normal = airline#themes#generate_color_map(['#30243d', '#bf8ef1', 236, 183, 'bold'], ['#ccbfd9', '#422b5a', 252, 238, ''], ['#ccbfd9', '#54396f', 252, 240, ''])
let g:airline#themes#noctis_viola#palette.normal_modified = {
      \ 'airline_c': ['#e4b781', '#54396f', 222, 240, ''],
      \ }

let g:airline#themes#noctis_viola#palette.insert = airline#themes#generate_color_map(['#30243d', '#49e9a6', 236, 85, 'bold'], ['#ccbfd9', '#422b5a', 252, 238, ''], ['#ccbfd9', '#54396f', 252, 240, ''])
let g:airline#themes#noctis_viola#palette.insert_modified = {
      \ 'airline_c': ['#e4b781', '#54396f', 222, 240, ''],
      \ }
let g:airline#themes#noctis_viola#palette.insert_paste = {
      \ 'airline_a': ['#30243d', '#d5971a', 236, 178, 'bold'],
      \ 'airline_z': ['#30243d', '#d5971a', 236, 178, 'bold'],
      \ }

let g:airline#themes#noctis_viola#palette.replace = airline#themes#generate_color_map(['#30243d', '#e34e1c', 236, 202, 'bold'], ['#ccbfd9', '#422b5a', 252, 238, ''], ['#ccbfd9', '#54396f', 252, 240, ''])
let g:airline#themes#noctis_viola#palette.replace_modified = {
      \ 'airline_c': ['#e4b781', '#54396f', 222, 240, ''],
      \ }

let g:airline#themes#noctis_viola#palette.visual = airline#themes#generate_color_map(['#30243d', '#df769b', 236, 211, 'bold'], ['#ccbfd9', '#422b5a', 252, 238, ''], ['#ccbfd9', '#54396f', 252, 240, ''])
let g:airline#themes#noctis_viola#palette.visual_modified = {
      \ 'airline_c': ['#e4b781', '#54396f', 222, 240, ''],
      \ }

let g:airline#themes#noctis_viola#palette.terminal = airline#themes#generate_color_map(['#30243d', '#16a3b6', 236, 38, 'bold'], ['#ccbfd9', '#422b5a', 252, 238, ''], ['#ccbfd9', '#54396f', 252, 240, ''])

let g:airline#themes#noctis_viola#palette.commandline = airline#themes#generate_color_map(['#30243d', '#7060eb', 236, 63, 'bold'], ['#ccbfd9', '#422b5a', 252, 238, ''], ['#ccbfd9', '#54396f', 252, 240, ''])

let g:airline#themes#noctis_viola#palette.inactive = airline#themes#generate_color_map(['#9987ab', '#30243d', 247, 236, ''], ['#9987ab', '#30243d', 247, 236, ''], ['#9987ab', '#30243d', 247, 236, ''])
let g:airline#themes#noctis_viola#palette.inactive_modified = {
      \ 'airline_c': ['#e4b781', '#30243d', 222, 236, ''],
      \ }

let g:airline#themes#noctis_viola#palette.accents = {
      \ 'red': [ '#e34e1c', '', 202, '', '' ],
      \ }

for s:mode in ['normal', 'normal_modified', 'insert', 'insert_modified', 'visual', 'visual_modified', 'replace', 'replace_modified']
  let g:airline#themes#noctis_viola#palette[s:mode].airline_warning = ['#30243d', '#e69533', 236, 215, 'bold']
  let g:airline#themes#noctis_viola#palette[s:mode].airline_error = ['#30243d', '#e34e1c', 236, 202, 'bold']
endfor

if get(g:, 'loaded_ctrlp', 0)
  let g:airline#themes#noctis_viola#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
        \ ['#ccbfd9', '#21162d', 252, 235, ''],
        \ ['#ccbfd9', '#422b5a', 252, 238, ''],
        \ ['#30243d', '#bf8ef1', 236, 183, 'bold'])
endif
