" Noctis Minimus airline theme
" Generated from themes/minimus.json by scripts/build-vim.mjs.

let g:airline#themes#noctis_minimus#palette = {}

let g:airline#themes#noctis_minimus#palette.normal = airline#themes#generate_color_map(['#1b2932', '#5998c0', 235, 74, 'bold'], ['#c5cdd3', '#243742', 252, 236, ''], ['#c5cdd3', '#294557', 252, 238, ''])
let g:airline#themes#noctis_minimus#palette.normal_modified = {
      \ 'airline_c': ['#d3b692', '#294557', 187, 238, ''],
      \ }

let g:airline#themes#noctis_minimus#palette.insert = airline#themes#generate_color_map(['#1b2932', '#72c09f', 235, 79, 'bold'], ['#c5cdd3', '#243742', 252, 236, ''], ['#c5cdd3', '#294557', 252, 238, ''])
let g:airline#themes#noctis_minimus#palette.insert_modified = {
      \ 'airline_c': ['#d3b692', '#294557', 187, 238, ''],
      \ }
let g:airline#themes#noctis_minimus#palette.insert_paste = {
      \ 'airline_a': ['#1b2932', '#a88c00', 235, 142, 'bold'],
      \ 'airline_z': ['#1b2932', '#a88c00', 235, 142, 'bold'],
      \ }

let g:airline#themes#noctis_minimus#palette.replace = airline#themes#generate_color_map(['#1b2932', '#b96346', 235, 167, 'bold'], ['#c5cdd3', '#243742', 252, 236, ''], ['#c5cdd3', '#294557', 252, 238, ''])
let g:airline#themes#noctis_minimus#palette.replace_modified = {
      \ 'airline_c': ['#d3b692', '#294557', 187, 238, ''],
      \ }

let g:airline#themes#noctis_minimus#palette.visual = airline#themes#generate_color_map(['#1b2932', '#c88da2', 235, 181, 'bold'], ['#c5cdd3', '#243742', 252, 236, ''], ['#c5cdd3', '#294557', 252, 238, ''])
let g:airline#themes#noctis_minimus#palette.visual_modified = {
      \ 'airline_c': ['#d3b692', '#294557', 187, 238, ''],
      \ }

let g:airline#themes#noctis_minimus#palette.terminal = airline#themes#generate_color_map(['#1b2932', '#3f848d', 235, 67, 'bold'], ['#c5cdd3', '#243742', 252, 236, ''], ['#c5cdd3', '#294557', 252, 238, ''])

let g:airline#themes#noctis_minimus#palette.commandline = airline#themes#generate_color_map(['#1b2932', '#7068b1', 235, 62, 'bold'], ['#c5cdd3', '#243742', 252, 236, ''], ['#c5cdd3', '#294557', 252, 238, ''])

let g:airline#themes#noctis_minimus#palette.inactive = airline#themes#generate_color_map(['#98a6ae', '#1b2932', 248, 235, ''], ['#98a6ae', '#1b2932', 248, 235, ''], ['#98a6ae', '#1b2932', 248, 235, ''])
let g:airline#themes#noctis_minimus#palette.inactive_modified = {
      \ 'airline_c': ['#d3b692', '#1b2932', 187, 235, ''],
      \ }

let g:airline#themes#noctis_minimus#palette.accents = {
      \ 'red': [ '#b96346', '', 167, '', '' ],
      \ }

for s:mode in ['normal', 'normal_modified', 'insert', 'insert_modified', 'visual', 'visual_modified', 'replace', 'replace_modified']
  let g:airline#themes#noctis_minimus#palette[s:mode].airline_warning = ['#1b2932', '#c09159', 235, 179, 'bold']
  let g:airline#themes#noctis_minimus#palette[s:mode].airline_error = ['#1b2932', '#b96346', 235, 167, 'bold']
endfor

if get(g:, 'loaded_ctrlp', 0)
  let g:airline#themes#noctis_minimus#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
        \ ['#c5cdd3', '#152128', 252, 234, ''],
        \ ['#c5cdd3', '#243742', 252, 236, ''],
        \ ['#1b2932', '#5998c0', 235, 74, 'bold'])
endif
