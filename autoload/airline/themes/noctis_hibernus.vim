" Noctis Hibernus airline theme
" Generated from themes/hibernus.json by scripts/build-vim.mjs.

let g:airline#themes#noctis_hibernus#palette = {}

let g:airline#themes#noctis_hibernus#palette.normal = airline#themes#generate_color_map(['#f4f6f6', '#0099ad', 255, 37, 'bold'], ['#005661', '#d1e8eb', 23, 254, ''], ['#005661', '#dfeff1', 23, 255, ''])
let g:airline#themes#noctis_hibernus#palette.normal_modified = {
      \ 'airline_c': ['#fa8900', '#dfeff1', 214, 255, ''],
      \ }

let g:airline#themes#noctis_hibernus#palette.insert = airline#themes#generate_color_map(['#f4f6f6', '#00b368', 255, 41, 'bold'], ['#005661', '#d1e8eb', 23, 254, ''], ['#005661', '#dfeff1', 23, 255, ''])
let g:airline#themes#noctis_hibernus#palette.insert_modified = {
      \ 'airline_c': ['#fa8900', '#dfeff1', 214, 255, ''],
      \ }
let g:airline#themes#noctis_hibernus#palette.insert_paste = {
      \ 'airline_a': ['#f4f6f6', '#a88c00', 255, 142, 'bold'],
      \ 'airline_z': ['#f4f6f6', '#a88c00', 255, 142, 'bold'],
      \ }

let g:airline#themes#noctis_hibernus#palette.replace = airline#themes#generate_color_map(['#f4f6f6', '#ff4000', 255, 202, 'bold'], ['#005661', '#d1e8eb', 23, 254, ''], ['#005661', '#dfeff1', 23, 255, ''])
let g:airline#themes#noctis_hibernus#palette.replace_modified = {
      \ 'airline_c': ['#fa8900', '#dfeff1', 214, 255, ''],
      \ }

let g:airline#themes#noctis_hibernus#palette.visual = airline#themes#generate_color_map(['#f4f6f6', '#ff5792', 255, 205, 'bold'], ['#005661', '#d1e8eb', 23, 254, ''], ['#005661', '#dfeff1', 23, 255, ''])
let g:airline#themes#noctis_hibernus#palette.visual_modified = {
      \ 'airline_c': ['#fa8900', '#dfeff1', 214, 255, ''],
      \ }

let g:airline#themes#noctis_hibernus#palette.terminal = airline#themes#generate_color_map(['#f4f6f6', '#0095a8', 255, 37, 'bold'], ['#005661', '#d1e8eb', 23, 254, ''], ['#005661', '#dfeff1', 23, 255, ''])

let g:airline#themes#noctis_hibernus#palette.commandline = airline#themes#generate_color_map(['#f4f6f6', '#5842ff', 255, 63, 'bold'], ['#005661', '#d1e8eb', 23, 254, ''], ['#005661', '#dfeff1', 23, 255, ''])

let g:airline#themes#noctis_hibernus#palette.inactive = airline#themes#generate_color_map(['#87a7ab', '#e7f2f3', 247, 255, ''], ['#87a7ab', '#caedf2', 247, 195, ''], ['#87a7ab', '#caedf2', 247, 195, ''])
let g:airline#themes#noctis_hibernus#palette.inactive_modified = {
      \ 'airline_c': ['#fa8900', '#caedf2', 214, 195, ''],
      \ }

let g:airline#themes#noctis_hibernus#palette.accents = {
      \ 'red': [ '#ff4000', '', 202, '', '' ],
      \ }

for s:mode in ['normal', 'normal_modified', 'insert', 'insert_modified', 'visual', 'visual_modified', 'replace', 'replace_modified']
  let g:airline#themes#noctis_hibernus#palette[s:mode].airline_warning = ['#f4f6f6', '#e69533', 255, 215, 'bold']
  let g:airline#themes#noctis_hibernus#palette[s:mode].airline_error = ['#f4f6f6', '#ff4000', 255, 202, 'bold']
endfor

if get(g:, 'loaded_ctrlp', 0)
  let g:airline#themes#noctis_hibernus#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
        \ ['#005661', '#c1d4d7', 23, 252, ''],
        \ ['#005661', '#d1e8eb', 23, 254, ''],
        \ ['#f4f6f6', '#0099ad', 255, 37, 'bold'])
endif
