""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Linting with ALE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ 'ruby': ['rubocop'],
      \ 'haskell': ['stack_ghc'],
      \ 'eruby': [''],
      \}

" ale_linters: haskell: ['cabal_ghc', 'ghc', 'ghc_mod', 'hdevtools', 'hie', 'hlint', 'stack_build', 'stack_ghc']

nmap <silent> <leader><C-k> <Plug>(ale_previous_wrap)
nmap <silent> <leader><C-j> <Plug>(ale_next_wrap)
nmap <silent> <leader>em <Plug>(ale_detail)
nmap <leader>gau <Plug>(ale_find_references)
nmap <silent> <leader>tl <Plug>(ale_toggle_buffer)



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autoformatting with ALE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>fl :ALEFix<CR>
let g:ale_fixers = {
      \   'javascript': [
      \       'eslint',
      \       'prettier'
      \   ],
      \   'typescript': [
      \       'tslint',
      \   ],
      \   'elm': [
      \       'elm-format',
      \   ],
      \   'json': [
      \       'fixjson', 
      \       'jq'
      \   ],
      \   'haskell': [
      \       'hfmt', 
      \   ],
      \}
