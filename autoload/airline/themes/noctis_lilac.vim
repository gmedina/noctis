" Noctis Lilac airline theme
" Generated from themes/lilac.json by scripts/build-vim.mjs.

let g:airline#themes#noctis_lilac#palette = {}

let g:airline#themes#noctis_lilac#palette.normal = airline#themes#generate_color_map(['#f2f1f8', '#7060eb', 255, 63, 'bold'], ['#0c006b', '#c9c2f9', 17, 189, ''], ['#0c006b', '#c1bbec', 17, 252, ''])
let g:airline#themes#noctis_lilac#palette.normal_modified = {
      \ 'airline_c': ['#fa8900', '#c1bbec', 214, 252, ''],
      \ }

let g:airline#themes#noctis_lilac#palette.insert = airline#themes#generate_color_map(['#f2f1f8', '#00b368', 255, 41, 'bold'], ['#0c006b', '#c9c2f9', 17, 189, ''], ['#0c006b', '#c1bbec', 17, 252, ''])
let g:airline#themes#noctis_lilac#palette.insert_modified = {
      \ 'airline_c': ['#fa8900', '#c1bbec', 214, 252, ''],
      \ }
let g:airline#themes#noctis_lilac#palette.insert_paste = {
      \ 'airline_a': ['#f2f1f8', '#a88c00', 255, 142, 'bold'],
      \ 'airline_z': ['#f2f1f8', '#a88c00', 255, 142, 'bold'],
      \ }

let g:airline#themes#noctis_lilac#palette.replace = airline#themes#generate_color_map(['#f2f1f8', '#ff4000', 255, 202, 'bold'], ['#0c006b', '#c9c2f9', 17, 189, ''], ['#0c006b', '#c1bbec', 17, 252, ''])
let g:airline#themes#noctis_lilac#palette.replace_modified = {
      \ 'airline_c': ['#fa8900', '#c1bbec', 214, 252, ''],
      \ }

let g:airline#themes#noctis_lilac#palette.visual = airline#themes#generate_color_map(['#f2f1f8', '#ff5792', 255, 205, 'bold'], ['#0c006b', '#c9c2f9', 17, 189, ''], ['#0c006b', '#c1bbec', 17, 252, ''])
let g:airline#themes#noctis_lilac#palette.visual_modified = {
      \ 'airline_c': ['#fa8900', '#c1bbec', 214, 252, ''],
      \ }

let g:airline#themes#noctis_lilac#palette.terminal = airline#themes#generate_color_map(['#f2f1f8', '#0095a8', 255, 37, 'bold'], ['#0c006b', '#c9c2f9', 17, 189, ''], ['#0c006b', '#c1bbec', 17, 252, ''])

let g:airline#themes#noctis_lilac#palette.commandline = airline#themes#generate_color_map(['#f2f1f8', '#5842ff', 255, 63, 'bold'], ['#0c006b', '#c9c2f9', 17, 189, ''], ['#0c006b', '#c1bbec', 17, 252, ''])

let g:airline#themes#noctis_lilac#palette.inactive = airline#themes#generate_color_map(['#8b87ab', '#edecf8', 246, 255, ''], ['#8b87ab', '#e2dff6', 246, 254, ''], ['#8b87ab', '#e2dff6', 246, 254, ''])
let g:airline#themes#noctis_lilac#palette.inactive_modified = {
      \ 'airline_c': ['#fa8900', '#e2dff6', 214, 254, ''],
      \ }

let g:airline#themes#noctis_lilac#palette.accents = {
      \ 'red': [ '#ff4000', '', 202, '', '' ],
      \ }

for s:mode in ['normal', 'normal_modified', 'insert', 'insert_modified', 'visual', 'visual_modified', 'replace', 'replace_modified']
  let g:airline#themes#noctis_lilac#palette[s:mode].airline_warning = ['#f2f1f8', '#e69533', 255, 215, 'bold']
  let g:airline#themes#noctis_lilac#palette[s:mode].airline_error = ['#f2f1f8', '#ff4000', 255, 202, 'bold']
endfor

if get(g:, 'loaded_ctrlp', 0)
  let g:airline#themes#noctis_lilac#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
        \ ['#0c006b', '#d3cff1', 17, 189, ''],
        \ ['#0c006b', '#c9c2f9', 17, 189, ''],
        \ ['#f2f1f8', '#7060eb', 255, 63, 'bold'])
endif
