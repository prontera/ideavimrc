" M->cmd, A->option, C->control
" <ESC> - escape, <BS> - backspace, <CR> - return

" leader
let mapleader = " "

" 启用vim surround功能
set surround
" 启用multi cursor
set multiple-cursors
" 显示行号
set nu
" 显示相对行号
set rnu
" 高亮搜索
set hlsearch
" 自动定位到输入中的字符串，不需要回车搜索
set incsearch
" 显示当前的模式
set showmode
" 共享系统粘贴板
set clipboard=unnamed
" 搜索时智能匹配大小写
set ignorecase smartcase

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
noremap H Hzz
noremap L Lzz
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
noremap <C-O> <ESC>:action Back<CR>
noremap <C-I> <ESC>:action Forward<CR>
noremap <C-D> <C-D>zz
noremap <C-U> <C-U>zz
" E和R是为了保持与Chrome中的SurfingKeys的键位一致
noremap E gT
noremap R gt
noremap J <ESC>:action EditorJoinLines<CR>

" 个人习惯
noremap <leader>` <ESC>:action SelectInProjectView<CR>

" Leader key relevant
" quit
noremap <leader>q :wq<CR>
" w
"noremap <leader>w <ESC>:action<CR>
" error description
noremap <leader>e <ESC>:action ShowErrorDescription<CR>
" return
noremap <leader>r <ESC>:action Rerun<CR>
" Windows或者MacOS的快捷键都与t相关, 所以选择t作为键
noremap <leader>t <ESC>:action Refactorings.QuickListPopupAction<CR>
" y
"noremap <leader>y <ESC>:action <CR>
" usage
noremap <leader>u <ESC>:action ShowUsages<CR>
" import
noremap <leader>i <ESC>:action Maven.Reimport<CR>
" open file path
noremap <leader>o <ESC>:action ShowFilePath<CR>
" show projects
noremap <leader>p <ESC>:action ManageRecentProjects<CR>

" ace jump
noremap <leader>a <ESC>:action emacsIDEAs.AceJumpWord<CR>
" structure
noremap <leader>s <ESC>:action FileStructurePopup<CR>
" debug option
noremap <leader>d <ESC>:action ChooseDebugConfiguration<CR>
" 同样也是debug，因为d已经被ChooseDebugConfiguration占领, 所以就放在了d键隔壁.
noremap <leader>f <ESC>:action DebugClass<CR>
" g
noremap <leader>g <ESC>:action Generate<CR>
" hide all
noremap <leader>h <ESC>:action HideAllWindows<CR>
" jump to next error
noremap <leader>j <ESC>:action GotoNextError<CR>
" jump to previous error，就近原则
noremap <leader>k <ESC>:action GotoPreviousError<CR>
" light up
noremap <leader>l <ESC>:action HighlightUsagesInFile<CR>
" 粘贴最近复制寄存器
noremap <leader>; "0p

" 本行皆为debug所用
" resume - z
noremap <leader>z <ESC>:action Resume<CR>
" step over
noremap <leader>x <ESC>:action StepOver<CR>
" step into
noremap <leader>c <ESC>:action SmartStepInto<CR>
" evaluate expression - v
noremap <leader>v <ESC>:action EvaluateExpression<CR>
" breakpoints
noremap <leader>b <ESC>:action ViewBreakpoints<CR>
" 因为属于breakpoint范畴的功能, 所以就选择了b和m的隔壁
noremap <leader>n <ESC>:action ToggleLineBreakpoint<CR>
" mute breakpoints
noremap <leader>m <ESC>:action XDebugger.MuteBreakpoints<CR>

" g key relevant
"
" q
"noremap gq <ESC>:action <CR>
" switcher
noremap gw <ESC>:action RecentFiles<CR>
" e
"noremap ge <ESC>:action <CR>
" r
"noremap gr <ESC>:action <CR>
" translator(third party plugin)
noremap gt <ESC>:action $EditorTranslateAction<CR>
" y
noremap gy <ESC>:action CopyReference<CR>
" u
"noremap gu <ESC>:action <CR>
" intention
noremap gi <ESC>:action ShowIntentionActions<CR>
" o
"noremap go <ESC>:action <CR>
" param info
noremap gp <ESC>:action ParameterInfo<CR>

" a
"noremap ga <ESC>:action emacsIDEAs.AceJump<CR>
" goto source
noremap gs <ESC>:action GotoImplementation<CR>
" goto declaration
noremap gd <ESC>:action GotoDeclaration<CR>
" goto file
noremap gf <ESC>:action GotoFile<CR>
" g
"noremap gg <ESC>:action MUST_NOT_BE_CHANGED!!!<CR>
" hierarchy
noremap ghc <ESC>:action CallHierarchy<CR>
noremap ght <ESC>:action TypeHierarchy<CR>
noremap ghm <ESC>:action MethodHierarchy<CR>
" j analyze data flow in
noremap gj <ESC>:action SliceBackward<CR>
" k analyze data flow out
noremap gk <ESC>:action SliceForward<CR>
" l
"noremap gl <ESC>:action <CR>

" z
"noremap gz <ESC>:action <CR>
" close all but this
noremap gx <ESC>:action CloseAllEditorsButActive<CR>
" compile
noremap gc <ESC>:action CompileDirty<CR>
" v
"noremap gv <ESC>:action <CR>
" b
noremap gb <ESC>:action FindBugs.CurrentFileAction<CR>
" goto class
noremap gn <ESC>:action GotoClass<CR>
" goto method
noremap gm <ESC>:action GotoSymbol<CR>

" \ also works
"noremap \q <ESC>:action <CR>
" refresh
noremap \r <ESC>:source ~/.ideavimrc<CR>
" git flow
noremap \[ <ESC>:action Gitflow.OpenGitflowPopup<CR>
" Vcs
noremap \] <ESC>:action Vcs.QuickListPopupAction<CR>

" global find
noremap g/ <ESC>:action FindInPath<CR>
" gloaal replace
noremap g' <ESC>:action ReplaceInPath<CR>
" find
noremap / <ESC>:action Find<CR>
" replace
noremap ' <ESC>:action Replace<CR>
" previous method
noremap [[ <ESC>:action MethodUp<CR>
" next method
noremap ]] <ESC>:action MethodDown<CR>

" multiple cursors
map <A-M>  <A-N>
