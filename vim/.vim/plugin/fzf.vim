function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()

map <C-p> :ProjectFiles<CR>
map <C-g:lsp_diagnostics_enablee> :Ag<CR>
