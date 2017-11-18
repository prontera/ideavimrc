" M->cmd, A->option, C->control

" leader
let mapleader = " "

" setting
set surround
set nu
set rnu
set hlsearch
set incsearch
set showmode
set clipboard=unnamed

" Insert
inoremap jk <Esc>
" Normal
nnoremap dd ddzz
" Visual
vnoremap d dzz

" Normal + Visual
noremap # #zz
noremap * *zz
noremap w wzz
noremap W Wzz
noremap e ezz
noremap E Ezz
noremap b bzz
noremap B Bzz
noremap 0 0zz
noremap $ $zz
noremap ^ ^zz
noremap j jzz
noremap k kzz
noremap G Gzz
noremap u uzz
noremap ( (zz
noremap ) )zz
noremap { {zz
noremap } }zz
noremap [{ [{zz
noremap ]} ]}zz
noremap gd gdzz
noremap <C-O> :action Back<CR>
noremap <C-I> :action Forward<CR>
noremap <C-D> <C-D>zz
noremap <C-U> <C-U>zz
" E和R是为了保持与Chrome中的SurfingKeys的键位一致
noremap E gT
noremap R gt
noremap J :action EditorJoinLines<CR>

" 个人习惯
noremap <leader>` :action SelectInProjectView<CR>

" Leader key relevant
" quit
noremap <leader>q :wq<CR>
" w
"noremap <leader>w :action<CR>
" error description
noremap <leader>e :action ShowErrorDescription<CR>
" return
noremap <leader>r :action Rerun<CR>
" Windows或者MacOS的快捷键都与t相关, 所以选择t作为键
noremap <leader>t :action Refactorings.QuickListPopupAction<CR>
" y
"noremap <leader>y :action <CR>
" usage
noremap <leader>u :action ShowUsages<CR>
" import
noremap <leader>i :action Maven.Reimport<CR>
" open file path
noremap <leader>o :action ShowFilePath<CR>
" show projects
noremap <leader>p :action ManageRecentProjects<CR>

" Vcs
noremap <leader>a :action Vcs.QuickListPopupAction<CR>
" structure
noremap <leader>s :action FileStructurePopup<CR>
" debug option
noremap <leader>d :action ChooseDebugConfiguration<CR>
" 同样也是debug，因为d已经被ChooseDebugConfiguration占领, 所以就放在了d键隔壁.
noremap <leader>f :action DebugClass<CR>
" g
noremap <leader>g :action Generate<CR>
" hide all
noremap <leader>h :action HideAllWindows<CR>
" jump to next error
noremap <leader>j :action GotoNextError<CR>
" jump to previous error，就近原则
noremap <leader>k :action GotoPreviousError<CR>
" light up
noremap <leader>l :action HighlightUsagesInFile<CR>
" 最近复制寄存器
noremap <leader>; "0p

" 本行皆为debug所用
" resume - z
noremap <leader>z :action Resume<CR>
" step over
noremap <leader>x :action StepOver<CR>
" step into
noremap <leader>c :action SmartStepInto<CR>
" evaluate expression - v
noremap <leader>v :action EvaluateExpression<CR>
" breakpoints
noremap <leader>b :action ViewBreakpoints<CR>
" 因为属于breakpoint范畴的功能, 所以就选择了b和m的隔壁
noremap <leader>n :action ToggleLineBreakpoint<CR>
" mute breakpoints
noremap <leader>m :action XDebugger.MuteBreakpoints<CR>

" g key relevant
"
" q
"noremap gq :action <CR>
" w
"noremap gw :action <CR>
" e
"noremap ge :action <CR>
" r
"noremap gr :action <CR>
" t
"noremap gt :action <CR>
" y
noremap gy :action CopyReference<CR>
" u
"noremap gu :action <CR>
" intention
noremap gi :action ShowIntentionActions<CR>
" goto class
noremap go :action GotoClass<CR>
" p
"noremap gp :action <CR>

" a
noremap ga :action Gitflow.OpenGitflowPopup<CR>
" s
noremap gs :action GotoImplementation<CR>
" d
noremap gd :action GotoDeclaration<CR>
" goto file
noremap gf :action GotoFile<CR>
" g
"noremap gg :action MUST_NOT_BE_CHANGED!!!<CR>
" hierarchy
noremap ghc :action CallHierarchy<CR>
noremap ght :action TypeHierarchy<CR>
noremap ghm :action MethodHierarchy<CR>
" j
"noremap gj :action <CR>
" k
"noremap gk :action <CR>
" l
"noremap gl :action <CR>

" z
"noremap gz :action <CR>
" x
"noremap gx :action <CR>
" close other
noremap gc :action CloseAllEditorsButActive<CR>
" v
"noremap gv :action <CR>
" b
"noremap gb :action <CR>
" n
"noremap gn :action <CR>
" make
noremap gm :action CompileDirty<CR>
" /
noremap g/ :action FindInPath<CR>
