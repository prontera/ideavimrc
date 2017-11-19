" M->cmd, A->option, C->control
" <ESC> - escape, <BS> - backspace, <CR> - return

" leader
let mapleader = " "

" 启用vim surround功能
set surround
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
" 粘贴最近复制寄存器
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
" switcher
noremap gw <ESC>:action RecentFiles<CR>
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
noremap gi <ESC>:action ShowIntentionActions<CR>
" o
"noremap go :action <CR>
" param info
noremap gp <ESC>:action ParameterInfo<CR>

" a
noremap ga :action Gitflow.OpenGitflowPopup<CR>
" goto source
noremap gs :action GotoImplementation<CR>
" goto declaration
noremap gd :action GotoDeclaration<CR>
" goto file
noremap gf <ESC>:action GotoFile<CR>
" g
"noremap gg :action MUST_NOT_BE_CHANGED!!!<CR>
" hierarchy
noremap ghc :action CallHierarchy<CR>
noremap ght :action TypeHierarchy<CR>
noremap ghm :action MethodHierarchy<CR>
" acejump
noremap gj <ESC>:action emacsIDEAs.AceJump<CR>
" k
"noremap gk :action <CR>
" l
"noremap gl :action <CR>

" z
"noremap gz :action <CR>
" close all but this
noremap gx :action CloseAllEditorsButActive<CR>
" compile
noremap gc :action CompileDirty<CR>
" v
"noremap gv :action <CR>
" b
noremap gb :action FindBugs.CurrentFileAction<CR>
" goto class
noremap gn <ESC>:action GotoClass<CR>
" goto method
noremap gm :action GotoSymbol<CR>

" \ also works
"noremap \q :action <CR>
" refresh
noremap \r :source ~/.ideavimrc<CR>

" global find
noremap g/ :action FindInPath<CR>
" gloaal replace
noremap g' :action ReplaceInPath<CR>
" find
noremap / :action Find<CR>
" replace
noremap ' :action Replace<CR>
