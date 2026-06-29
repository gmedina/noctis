" Noctis Bordo airline theme
" Generated from themes/bordo.json by scripts/build-vim.mjs.

let g:airline#themes#noctis_bordo#palette = {}

let g:airline#themes#noctis_bordo#palette.normal = airline#themes#generate_color_map(['#322a2d', '#f18eb0', 236, 218, 'bold'], ['#cbbec2', '#453339', 251, 237, ''], ['#cbbec2', '#5d3f49', 251, 239, ''])
let g:airline#themes#noctis_bordo#palette.normal_modified = {
      \ 'airline_c': ['#e4b781', '#5d3f49', 222, 239, ''],
      \ }

let g:airline#themes#noctis_bordo#palette.insert = airline#themes#generate_color_map(['#322a2d', '#49e9a6', 236, 85, 'bold'], ['#cbbec2', '#453339', 251, 237, ''], ['#cbbec2', '#5d3f49', 251, 239, ''])
let g:airline#themes#noctis_bordo#palette.insert_modified = {
      \ 'airline_c': ['#e4b781', '#5d3f49', 222, 239, ''],
      \ }
let g:airline#themes#noctis_bordo#palette.insert_paste = {
      \ 'airline_a': ['#322a2d', '#d5971a', 236, 178, 'bold'],
      \ 'airline_z': ['#322a2d', '#d5971a', 236, 178, 'bold'],
      \ }

let g:airline#themes#noctis_bordo#palette.replace = airline#themes#generate_color_map(['#322a2d', '#e34e1c', 236, 202, 'bold'], ['#cbbec2', '#453339', 251, 237, ''], ['#cbbec2', '#5d3f49', 251, 239, ''])
let g:airline#themes#noctis_bordo#palette.replace_modified = {
      \ 'airline_c': ['#e4b781', '#5d3f49', 222, 239, ''],
      \ }

let g:airline#themes#noctis_bordo#palette.visual = airline#themes#generate_color_map(['#322a2d', '#df769b', 236, 211, 'bold'], ['#cbbec2', '#453339', 251, 237, ''], ['#cbbec2', '#5d3f49', 251, 239, ''])
let g:airline#themes#noctis_bordo#palette.visual_modified = {
      \ 'airline_c': ['#e4b781', '#5d3f49', 222, 239, ''],
      \ }

let g:airline#themes#noctis_bordo#palette.terminal = airline#themes#generate_color_map(['#322a2d', '#16a3b6', 236, 38, 'bold'], ['#cbbec2', '#453339', 251, 237, ''], ['#cbbec2', '#5d3f49', 251, 239, ''])

let g:airline#themes#noctis_bordo#palette.commandline = airline#themes#generate_color_map(['#322a2d', '#7060eb', 236, 63, 'bold'], ['#cbbec2', '#453339', 251, 237, ''], ['#cbbec2', '#5d3f49', 251, 239, ''])

let g:airline#themes#noctis_bordo#palette.inactive = airline#themes#generate_color_map(['#a48e96', '#322a2d', 246, 236, ''], ['#a48e96', '#322a2d', 246, 236, ''], ['#a48e96', '#322a2d', 246, 236, ''])
let g:airline#themes#noctis_bordo#palette.inactive_modified = {
      \ 'airline_c': ['#e4b781', '#322a2d', 222, 236, ''],
      \ }

let g:airline#themes#noctis_bordo#palette.accents = {
      \ 'red': [ '#e34e1c', '', 202, '', '' ],
      \ }

for s:mode in ['normal', 'normal_modified', 'insert', 'insert_modified', 'visual', 'visual_modified', 'replace', 'replace_modified']
  let g:airline#themes#noctis_bordo#palette[s:mode].airline_warning = ['#322a2d', '#e69533', 236, 215, 'bold']
  let g:airline#themes#noctis_bordo#palette[s:mode].airline_error = ['#322a2d', '#e34e1c', 236, 202, 'bold']
endfor

if get(g:, 'loaded_ctrlp', 0)
  let g:airline#themes#noctis_bordo#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
        \ ['#cbbec2', '#272022', 251, 235, ''],
        \ ['#cbbec2', '#453339', 251, 237, ''],
        \ ['#322a2d', '#f18eb0', 236, 218, 'bold'])
endif
