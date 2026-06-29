" Noctis airline theme
" Generated from themes/noctis.json by scripts/build-vim.mjs.

let g:airline#themes#noctis#palette = {}

let g:airline#themes#noctis#palette.normal = airline#themes#generate_color_map(['#052529', '#40d4e7', 234, 81, 'bold'], ['#b2cacd', '#062e32', 251, 235, ''], ['#b2cacd', '#0a474f', 251, 23, ''])
let g:airline#themes#noctis#palette.normal_modified = {
      \ 'airline_c': ['#e4b781', '#0a474f', 222, 23, ''],
      \ }

let g:airline#themes#noctis#palette.insert = airline#themes#generate_color_map(['#052529', '#49e9a6', 234, 85, 'bold'], ['#b2cacd', '#062e32', 251, 235, ''], ['#b2cacd', '#0a474f', 251, 23, ''])
let g:airline#themes#noctis#palette.insert_modified = {
      \ 'airline_c': ['#e4b781', '#0a474f', 222, 23, ''],
      \ }
let g:airline#themes#noctis#palette.insert_paste = {
      \ 'airline_a': ['#052529', '#d5971a', 234, 178, 'bold'],
      \ 'airline_z': ['#052529', '#d5971a', 234, 178, 'bold'],
      \ }

let g:airline#themes#noctis#palette.replace = airline#themes#generate_color_map(['#052529', '#e34e1c', 234, 202, 'bold'], ['#b2cacd', '#062e32', 251, 235, ''], ['#b2cacd', '#0a474f', 251, 23, ''])
let g:airline#themes#noctis#palette.replace_modified = {
      \ 'airline_c': ['#e4b781', '#0a474f', 222, 23, ''],
      \ }

let g:airline#themes#noctis#palette.visual = airline#themes#generate_color_map(['#052529', '#df769b', 234, 211, 'bold'], ['#b2cacd', '#062e32', 251, 235, ''], ['#b2cacd', '#0a474f', 251, 23, ''])
let g:airline#themes#noctis#palette.visual_modified = {
      \ 'airline_c': ['#e4b781', '#0a474f', 222, 23, ''],
      \ }

let g:airline#themes#noctis#palette.terminal = airline#themes#generate_color_map(['#052529', '#16a3b6', 234, 38, 'bold'], ['#b2cacd', '#062e32', 251, 235, ''], ['#b2cacd', '#0a474f', 251, 23, ''])

let g:airline#themes#noctis#palette.commandline = airline#themes#generate_color_map(['#052529', '#7060eb', 234, 63, 'bold'], ['#b2cacd', '#062e32', 251, 235, ''], ['#b2cacd', '#0a474f', 251, 23, ''])

let g:airline#themes#noctis#palette.inactive = airline#themes#generate_color_map(['#87a7ab', '#041d20', 247, 233, ''], ['#87a7ab', '#041d20', 247, 233, ''], ['#87a7ab', '#041d20', 247, 233, ''])
let g:airline#themes#noctis#palette.inactive_modified = {
      \ 'airline_c': ['#e4b781', '#041d20', 222, 233, ''],
      \ }

let g:airline#themes#noctis#palette.accents = {
      \ 'red': [ '#e34e1c', '', 202, '', '' ],
      \ }

for s:mode in ['normal', 'normal_modified', 'insert', 'insert_modified', 'visual', 'visual_modified', 'replace', 'replace_modified']
  let g:airline#themes#noctis#palette[s:mode].airline_warning = ['#052529', '#e69533', 234, 215, 'bold']
  let g:airline#themes#noctis#palette[s:mode].airline_error = ['#052529', '#e34e1c', 234, 202, 'bold']
endfor

if get(g:, 'loaded_ctrlp', 0)
  let g:airline#themes#noctis#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
        \ ['#b2cacd', '#020c0e', 251, 232, ''],
        \ ['#b2cacd', '#062e32', 251, 235, ''],
        \ ['#052529', '#40d4e7', 234, 81, 'bold'])
endif
