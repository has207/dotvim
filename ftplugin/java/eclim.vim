nnoremap <silent> <buffer> <leader>i :JavaImport<cr>
nnoremap <silent> <buffer> <leader>t :JUnitFindTest<cr>
nnoremap <silent> <buffer> <cr> :JavaSearchContext<cr>

" Autocompletion with autocomplpop
let g:acp_behaviorJavaEclimLength = 3
function! MeetsForJavaEclim(context)
  return g:acp_behaviorJavaEclimLength >= 0 &&
        \ a:context =~ '\k\.\k\{' . g:acp_behaviorJavaEclimLength . ',}$'
endfunction
let g:acp_behavior['java'] = [{
      \ 'command': "\<c-x>\<c-u>",
      \ 'completefunc': 'eclim#java#complete#CodeComplete',
      \ 'meets': 'MeetsForJavaEclim',
    \ }]
