" Noctis Obscuro airline theme
" Generated from themes/obscuro.json by scripts/build-vim.mjs.

let g:airline#themes#noctis_obscuro#palette = {}

let g:airline#themes#noctis_obscuro#palette.normal = airline#themes#generate_color_map(['#031417', '#ebfdff', 233, 231, 'bold'], ['#b2cacd', '#062e32', 251, 235, ''], ['#b2cacd', '#094148', 251, 23, ''])
let g:airline#themes#noctis_obscuro#palette.normal_modified = {
      \ 'airline_c': ['#e4b781', '#094148', 222, 23, ''],
      \ }

let g:airline#themes#noctis_obscuro#palette.insert = airline#themes#generate_color_map(['#031417', '#49e9a6', 233, 85, 'bold'], ['#b2cacd', '#062e32', 251, 235, ''], ['#b2cacd', '#094148', 251, 23, ''])
let g:airline#themes#noctis_obscuro#palette.insert_modified = {
      \ 'airline_c': ['#e4b781', '#094148', 222, 23, ''],
      \ }
let g:airline#themes#noctis_obscuro#palette.insert_paste = {
      \ 'airline_a': ['#031417', '#d5971a', 233, 178, 'bold'],
      \ 'airline_z': ['#031417', '#d5971a', 233, 178, 'bold'],
      \ }

let g:airline#themes#noctis_obscuro#palette.replace = airline#themes#generate_color_map(['#031417', '#e34e1c', 233, 202, 'bold'], ['#b2cacd', '#062e32', 251, 235, ''], ['#b2cacd', '#094148', 251, 23, ''])
let g:airline#themes#noctis_obscuro#palette.replace_modified = {
      \ 'airline_c': ['#e4b781', '#094148', 222, 23, ''],
      \ }

let g:airline#themes#noctis_obscuro#palette.visual = airline#themes#generate_color_map(['#031417', '#df769b', 233, 211, 'bold'], ['#b2cacd', '#062e32', 251, 235, ''], ['#b2cacd', '#094148', 251, 23, ''])
let g:airline#themes#noctis_obscuro#palette.visual_modified = {
      \ 'airline_c': ['#e4b781', '#094148', 222, 23, ''],
      \ }

let g:airline#themes#noctis_obscuro#palette.terminal = airline#themes#generate_color_map(['#031417', '#16a3b6', 233, 38, 'bold'], ['#b2cacd', '#062e32', 251, 235, ''], ['#b2cacd', '#094148', 251, 23, ''])

let g:airline#themes#noctis_obscuro#palette.commandline = airline#themes#generate_color_map(['#031417', '#7060eb', 233, 63, 'bold'], ['#b2cacd', '#062e32', 251, 235, ''], ['#b2cacd', '#094148', 251, 23, ''])

let g:airline#themes#noctis_obscuro#palette.inactive = airline#themes#generate_color_map(['#87a7ab', '#031417', 247, 233, ''], ['#87a7ab', '#031417', 247, 233, ''], ['#87a7ab', '#031417', 247, 233, ''])
let g:airline#themes#noctis_obscuro#palette.inactive_modified = {
      \ 'airline_c': ['#e4b781', '#031417', 222, 233, ''],
      \ }

let g:airline#themes#noctis_obscuro#palette.accents = {
      \ 'red': [ '#e34e1c', '', 202, '', '' ],
      \ }

for s:mode in ['normal', 'normal_modified', 'insert', 'insert_modified', 'visual', 'visual_modified', 'replace', 'replace_modified']
  let g:airline#themes#noctis_obscuro#palette[s:mode].airline_warning = ['#031417', '#e69533', 233, 215, 'bold']
  let g:airline#themes#noctis_obscuro#palette[s:mode].airline_error = ['#031417', '#e34e1c', 233, 202, 'bold']
endfor

if get(g:, 'loaded_ctrlp', 0)
  let g:airline#themes#noctis_obscuro#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
        \ ['#b2cacd', '#020c0e', 251, 232, ''],
        \ ['#b2cacd', '#062e32', 251, 235, ''],
        \ ['#031417', '#ebfdff', 233, 231, 'bold'])
endif
