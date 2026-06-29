" Noctis Azureus airline theme
" Generated from themes/azureus.json by scripts/build-vim.mjs.

let g:airline#themes#noctis_azureus#palette = {}

let g:airline#themes#noctis_azureus#palette.normal = airline#themes#generate_color_map(['#07273b', '#49ace9', 235, 75, 'bold'], ['#becfda', '#0a3652', 252, 23, ''], ['#becfda', '#05456e', 252, 23, ''])
let g:airline#themes#noctis_azureus#palette.normal_modified = {
      \ 'airline_c': ['#e4b781', '#05456e', 222, 23, ''],
      \ }

let g:airline#themes#noctis_azureus#palette.insert = airline#themes#generate_color_map(['#07273b', '#49e9a6', 235, 85, 'bold'], ['#becfda', '#0a3652', 252, 23, ''], ['#becfda', '#05456e', 252, 23, ''])
let g:airline#themes#noctis_azureus#palette.insert_modified = {
      \ 'airline_c': ['#e4b781', '#05456e', 222, 23, ''],
      \ }
let g:airline#themes#noctis_azureus#palette.insert_paste = {
      \ 'airline_a': ['#07273b', '#d5971a', 235, 178, 'bold'],
      \ 'airline_z': ['#07273b', '#d5971a', 235, 178, 'bold'],
      \ }

let g:airline#themes#noctis_azureus#palette.replace = airline#themes#generate_color_map(['#07273b', '#e34e1c', 235, 202, 'bold'], ['#becfda', '#0a3652', 252, 23, ''], ['#becfda', '#05456e', 252, 23, ''])
let g:airline#themes#noctis_azureus#palette.replace_modified = {
      \ 'airline_c': ['#e4b781', '#05456e', 222, 23, ''],
      \ }

let g:airline#themes#noctis_azureus#palette.visual = airline#themes#generate_color_map(['#07273b', '#df769b', 235, 211, 'bold'], ['#becfda', '#0a3652', 252, 23, ''], ['#becfda', '#05456e', 252, 23, ''])
let g:airline#themes#noctis_azureus#palette.visual_modified = {
      \ 'airline_c': ['#e4b781', '#05456e', 222, 23, ''],
      \ }

let g:airline#themes#noctis_azureus#palette.terminal = airline#themes#generate_color_map(['#07273b', '#16a3b6', 235, 38, 'bold'], ['#becfda', '#0a3652', 252, 23, ''], ['#becfda', '#05456e', 252, 23, ''])

let g:airline#themes#noctis_azureus#palette.commandline = airline#themes#generate_color_map(['#07273b', '#7060eb', 235, 63, 'bold'], ['#becfda', '#0a3652', 252, 23, ''], ['#becfda', '#05456e', 252, 23, ''])

let g:airline#themes#noctis_azureus#palette.inactive = airline#themes#generate_color_map(['#879dab', '#07273b', 247, 235, ''], ['#879dab', '#07273b', 247, 235, ''], ['#879dab', '#07273b', 247, 235, ''])
let g:airline#themes#noctis_azureus#palette.inactive_modified = {
      \ 'airline_c': ['#e4b781', '#07273b', 222, 235, ''],
      \ }

let g:airline#themes#noctis_azureus#palette.accents = {
      \ 'red': [ '#e34e1c', '', 202, '', '' ],
      \ }

for s:mode in ['normal', 'normal_modified', 'insert', 'insert_modified', 'visual', 'visual_modified', 'replace', 'replace_modified']
  let g:airline#themes#noctis_azureus#palette[s:mode].airline_warning = ['#07273b', '#e69533', 235, 215, 'bold']
  let g:airline#themes#noctis_azureus#palette[s:mode].airline_error = ['#07273b', '#e34e1c', 235, 202, 'bold']
endfor

if get(g:, 'loaded_ctrlp', 0)
  let g:airline#themes#noctis_azureus#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
        \ ['#becfda', '#051e2e', 252, 234, ''],
        \ ['#becfda', '#0a3652', 252, 23, ''],
        \ ['#07273b', '#49ace9', 235, 75, 'bold'])
endif
