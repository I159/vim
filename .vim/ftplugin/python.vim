" ------------------- Settings ----------------------------
set colorcolumn=121
highlight ColorColumn ctermbg=233
highlight OverLength ctermfg=244
match OverLength /\%121v.*/

" Enable advanced python syntax
let g:python_highlight_all = 1

" ------------------- Mappings ---------------------------
" Ale
"let g:ale_python_pycodestyle_options = '--max-line-length=120'
"let g:ale_python_pycodestyle_options = '--ignore=E501'
let g:ale_fixers = {'python': ['isort', 'black', 'autoimport', 'pyflyby']}
let g:ale_linters = {'python': ['pylint', 'prospector', 'mypy', 'bandit']}
let g:ale_completion_enabled = 1
let g:ale_completion_delay = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_set_highlights = 1
let g:ale_lint_on_enter = 1
let g:ale_python_isort_options = '--settings-path .'
let g:ale_python_black_options='--line-length=120'
"let g:ale_python_pylint_options = '--rcfile .pylintrc'
"let g:ale_python_auto_poetry = 1
"let g:ale_python_pylint_auto_poetry = 1

" Enable LSP features
let g:ale_python_pylsp_executable = 'pylsp'
let g:ale_disable_lsp = 0
let g:ale_python_pylsp_enabled = 1

noremap <leader>fx :ALEFix<CR>
noremap <leader>aj :ALENext<CR>
"noremap <leader>gd :ALEGoToDefinition<CR>
"noremap <leader>gr :ALEFindReferences<CR>
"noremap <leader>gi :ALEGoToImplementation<CR>
"noremap <leader>gt :ALEGoToTypeDefinition<CR>

"let g:jedi#goto_command = "<leader>jd"
"let g:jedi#goto_assignments_command = "<leader>jr"
"let g:jedi#goto_stubs_command = "<leader>s"
let g:jedi#goto_definitions_command = "<leader>jd"
let g:jedi#documentation_command = "<leader>jD"
let g:jedi#usages_command = "<leader>ju"
"let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>jr"
"let g:jedi#rename_command_keep_name = "<leader>R"
