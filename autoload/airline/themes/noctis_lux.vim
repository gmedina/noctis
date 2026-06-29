" Noctis Lux airline theme
" Generated from themes/lux.json by scripts/build-vim.mjs.

let g:airline#themes#noctis_lux#palette = {}

let g:airline#themes#noctis_lux#palette.normal = airline#themes#generate_color_map(['#fef8ec', '#0099ad', 255, 37, 'bold'], ['#005661', '#d1e8eb', 23, 254, ''], ['#005661', '#dfeff1', 23, 255, ''])
let g:airline#themes#noctis_lux#palette.normal_modified = {
      \ 'airline_c': ['#fa8900', '#dfeff1', 214, 255, ''],
      \ }

let g:airline#themes#noctis_lux#palette.insert = airline#themes#generate_color_map(['#fef8ec', '#00b368', 255, 41, 'bold'], ['#005661', '#d1e8eb', 23, 254, ''], ['#005661', '#dfeff1', 23, 255, ''])
let g:airline#themes#noctis_lux#palette.insert_modified = {
      \ 'airline_c': ['#fa8900', '#dfeff1', 214, 255, ''],
      \ }
let g:airline#themes#noctis_lux#palette.insert_paste = {
      \ 'airline_a': ['#fef8ec', '#a88c00', 255, 142, 'bold'],
      \ 'airline_z': ['#fef8ec', '#a88c00', 255, 142, 'bold'],
      \ }

let g:airline#themes#noctis_lux#palette.replace = airline#themes#generate_color_map(['#fef8ec', '#ff4000', 255, 202, 'bold'], ['#005661', '#d1e8eb', 23, 254, ''], ['#005661', '#dfeff1', 23, 255, ''])
let g:airline#themes#noctis_lux#palette.replace_modified = {
      \ 'airline_c': ['#fa8900', '#dfeff1', 214, 255, ''],
      \ }

let g:airline#themes#noctis_lux#palette.visual = airline#themes#generate_color_map(['#fef8ec', '#ff5792', 255, 205, 'bold'], ['#005661', '#d1e8eb', 23, 254, ''], ['#005661', '#dfeff1', 23, 255, ''])
let g:airline#themes#noctis_lux#palette.visual_modified = {
      \ 'airline_c': ['#fa8900', '#dfeff1', 214, 255, ''],
      \ }

let g:airline#themes#noctis_lux#palette.terminal = airline#themes#generate_color_map(['#fef8ec', '#0095a8', 255, 37, 'bold'], ['#005661', '#d1e8eb', 23, 254, ''], ['#005661', '#dfeff1', 23, 255, ''])

let g:airline#themes#noctis_lux#palette.commandline = airline#themes#generate_color_map(['#fef8ec', '#5842ff', 255, 63, 'bold'], ['#005661', '#d1e8eb', 23, 254, ''], ['#005661', '#dfeff1', 23, 255, ''])

let g:airline#themes#noctis_lux#palette.inactive = airline#themes#generate_color_map(['#87a7ab', '#f9f1e1', 247, 255, ''], ['#87a7ab', '#f0e9d6', 247, 254, ''], ['#87a7ab', '#f0e9d6', 247, 254, ''])
let g:airline#themes#noctis_lux#palette.inactive_modified = {
      \ 'airline_c': ['#fa8900', '#f0e9d6', 214, 254, ''],
      \ }

let g:airline#themes#noctis_lux#palette.accents = {
      \ 'red': [ '#ff4000', '', 202, '', '' ],
      \ }

for s:mode in ['normal', 'normal_modified', 'insert', 'insert_modified', 'visual', 'visual_modified', 'replace', 'replace_modified']
  let g:airline#themes#noctis_lux#palette[s:mode].airline_warning = ['#fef8ec', '#e69533', 255, 215, 'bold']
  let g:airline#themes#noctis_lux#palette[s:mode].airline_error = ['#fef8ec', '#ff4000', 255, 202, 'bold']
endfor

if get(g:, 'loaded_ctrlp', 0)
  let g:airline#themes#noctis_lux#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
        \ ['#005661', '#c1d4d7', 23, 252, ''],
        \ ['#005661', '#d1e8eb', 23, 254, ''],
        \ ['#fef8ec', '#0099ad', 255, 37, 'bold'])
endif
