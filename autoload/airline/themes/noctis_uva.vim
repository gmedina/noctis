" Noctis Uva airline theme
" Generated from themes/uva.json by scripts/build-vim.mjs.

let g:airline#themes#noctis_uva#palette = {}

let g:airline#themes#noctis_uva#palette.normal = airline#themes#generate_color_map(['#292640', '#998ef1', 236, 147, 'bold'], ['#c5c2d6', '#363253', 251, 237, ''], ['#c5c2d6', '#3e386a', 251, 239, ''])
let g:airline#themes#noctis_uva#palette.normal_modified = {
      \ 'airline_c': ['#e4b781', '#3e386a', 222, 239, ''],
      \ }

let g:airline#themes#noctis_uva#palette.insert = airline#themes#generate_color_map(['#292640', '#49e9a6', 236, 85, 'bold'], ['#c5c2d6', '#363253', 251, 237, ''], ['#c5c2d6', '#3e386a', 251, 239, ''])
let g:airline#themes#noctis_uva#palette.insert_modified = {
      \ 'airline_c': ['#e4b781', '#3e386a', 222, 239, ''],
      \ }
let g:airline#themes#noctis_uva#palette.insert_paste = {
      \ 'airline_a': ['#292640', '#d5971a', 236, 178, 'bold'],
      \ 'airline_z': ['#292640', '#d5971a', 236, 178, 'bold'],
      \ }

let g:airline#themes#noctis_uva#palette.replace = airline#themes#generate_color_map(['#292640', '#e34e1c', 236, 202, 'bold'], ['#c5c2d6', '#363253', 251, 237, ''], ['#c5c2d6', '#3e386a', 251, 239, ''])
let g:airline#themes#noctis_uva#palette.replace_modified = {
      \ 'airline_c': ['#e4b781', '#3e386a', 222, 239, ''],
      \ }

let g:airline#themes#noctis_uva#palette.visual = airline#themes#generate_color_map(['#292640', '#df769b', 236, 211, 'bold'], ['#c5c2d6', '#363253', 251, 237, ''], ['#c5c2d6', '#3e386a', 251, 239, ''])
let g:airline#themes#noctis_uva#palette.visual_modified = {
      \ 'airline_c': ['#e4b781', '#3e386a', 222, 239, ''],
      \ }

let g:airline#themes#noctis_uva#palette.terminal = airline#themes#generate_color_map(['#292640', '#16a3b6', 236, 38, 'bold'], ['#c5c2d6', '#363253', 251, 237, ''], ['#c5c2d6', '#3e386a', 251, 239, ''])

let g:airline#themes#noctis_uva#palette.commandline = airline#themes#generate_color_map(['#292640', '#7060eb', 236, 63, 'bold'], ['#c5c2d6', '#363253', 251, 237, ''], ['#c5c2d6', '#3e386a', 251, 239, ''])

let g:airline#themes#noctis_uva#palette.inactive = airline#themes#generate_color_map(['#8787ab', '#292640', 246, 236, ''], ['#8787ab', '#292640', 246, 236, ''], ['#8787ab', '#292640', 246, 236, ''])
let g:airline#themes#noctis_uva#palette.inactive_modified = {
      \ 'airline_c': ['#e4b781', '#292640', 222, 236, ''],
      \ }

let g:airline#themes#noctis_uva#palette.accents = {
      \ 'red': [ '#e34e1c', '', 202, '', '' ],
      \ }

for s:mode in ['normal', 'normal_modified', 'insert', 'insert_modified', 'visual', 'visual_modified', 'replace', 'replace_modified']
  let g:airline#themes#noctis_uva#palette[s:mode].airline_warning = ['#292640', '#e69533', 236, 215, 'bold']
  let g:airline#themes#noctis_uva#palette[s:mode].airline_error = ['#292640', '#e34e1c', 236, 202, 'bold']
endfor

if get(g:, 'loaded_ctrlp', 0)
  let g:airline#themes#noctis_uva#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
        \ ['#c5c2d6', '#1f1d30', 251, 235, ''],
        \ ['#c5c2d6', '#363253', 251, 237, ''],
        \ ['#292640', '#998ef1', 236, 147, 'bold'])
endif
