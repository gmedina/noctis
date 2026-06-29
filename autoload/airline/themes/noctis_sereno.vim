" Noctis Sereno airline theme
" Generated from themes/sereno.json by scripts/build-vim.mjs.

let g:airline#themes#noctis_sereno#palette = {}

let g:airline#themes#noctis_sereno#palette.normal = airline#themes#generate_color_map(['#062e32', '#40d4e7', 235, 81, 'bold'], ['#b2cacd', '#07373b', 251, 235, ''], ['#b2cacd', '#0a4e55', 251, 23, ''])
let g:airline#themes#noctis_sereno#palette.normal_modified = {
      \ 'airline_c': ['#e4b781', '#0a4e55', 222, 23, ''],
      \ }

let g:airline#themes#noctis_sereno#palette.insert = airline#themes#generate_color_map(['#062e32', '#49e9a6', 235, 85, 'bold'], ['#b2cacd', '#07373b', 251, 235, ''], ['#b2cacd', '#0a4e55', 251, 23, ''])
let g:airline#themes#noctis_sereno#palette.insert_modified = {
      \ 'airline_c': ['#e4b781', '#0a4e55', 222, 23, ''],
      \ }
let g:airline#themes#noctis_sereno#palette.insert_paste = {
      \ 'airline_a': ['#062e32', '#d5971a', 235, 178, 'bold'],
      \ 'airline_z': ['#062e32', '#d5971a', 235, 178, 'bold'],
      \ }

let g:airline#themes#noctis_sereno#palette.replace = airline#themes#generate_color_map(['#062e32', '#e34e1c', 235, 202, 'bold'], ['#b2cacd', '#07373b', 251, 235, ''], ['#b2cacd', '#0a4e55', 251, 23, ''])
let g:airline#themes#noctis_sereno#palette.replace_modified = {
      \ 'airline_c': ['#e4b781', '#0a4e55', 222, 23, ''],
      \ }

let g:airline#themes#noctis_sereno#palette.visual = airline#themes#generate_color_map(['#062e32', '#df769b', 235, 211, 'bold'], ['#b2cacd', '#07373b', 251, 235, ''], ['#b2cacd', '#0a4e55', 251, 23, ''])
let g:airline#themes#noctis_sereno#palette.visual_modified = {
      \ 'airline_c': ['#e4b781', '#0a4e55', 222, 23, ''],
      \ }

let g:airline#themes#noctis_sereno#palette.terminal = airline#themes#generate_color_map(['#062e32', '#16a3b6', 235, 38, 'bold'], ['#b2cacd', '#07373b', 251, 235, ''], ['#b2cacd', '#0a4e55', 251, 23, ''])

let g:airline#themes#noctis_sereno#palette.commandline = airline#themes#generate_color_map(['#062e32', '#7060eb', 235, 63, 'bold'], ['#b2cacd', '#07373b', 251, 235, ''], ['#b2cacd', '#0a4e55', 251, 23, ''])

let g:airline#themes#noctis_sereno#palette.inactive = airline#themes#generate_color_map(['#87a7ab', '#052629', 247, 234, ''], ['#87a7ab', '#052629', 247, 234, ''], ['#87a7ab', '#052629', 247, 234, ''])
let g:airline#themes#noctis_sereno#palette.inactive_modified = {
      \ 'airline_c': ['#e4b781', '#052629', 222, 234, ''],
      \ }

let g:airline#themes#noctis_sereno#palette.accents = {
      \ 'red': [ '#e34e1c', '', 202, '', '' ],
      \ }

for s:mode in ['normal', 'normal_modified', 'insert', 'insert_modified', 'visual', 'visual_modified', 'replace', 'replace_modified']
  let g:airline#themes#noctis_sereno#palette[s:mode].airline_warning = ['#062e32', '#e69533', 235, 215, 'bold']
  let g:airline#themes#noctis_sereno#palette[s:mode].airline_error = ['#062e32', '#e34e1c', 235, 202, 'bold']
endfor

if get(g:, 'loaded_ctrlp', 0)
  let g:airline#themes#noctis_sereno#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
        \ ['#b2cacd', '#03191b', 251, 233, ''],
        \ ['#b2cacd', '#07373b', 251, 235, ''],
        \ ['#062e32', '#40d4e7', 235, 81, 'bold'])
endif
