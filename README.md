# Idea Vim Configuration

本仓库为[ideavim](https://github.com/JetBrains/ideavim)的个人配置，尽最大可能兼容Chrome Surfingkeys插件的行为习惯。

## 使用

#### 手工添加

建立一个硬链接，直接让IDEA读取其配置。

```shell
ln VimProjects/ideavimrc/local.vimrc ~/.ideavimrc
```

#### 自动添加

```shell
./build.sh
```

## 键位设置

在不与Surfingkeys的大部分默认键位冲突下，有如下规则：

1. 尽量选用与原快捷键的意义相近的关键字键位
2. 在关键字无法避让的情况下采用**就近原则**或**大写策略**

如果键位不幸与默认键位冲突，优先满足默认键位，将冲突键位放置于特殊字符处，如`;`。

下面是某个版本下的键位快照，并不具体代表本仓库中的`local.vimrc`实际内容

```shell
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
noremap <C-O> <C-O>zz
noremap <C-I> <C-I>zz
noremap <C-D> <C-D>zz
noremap <C-U> <C-U>zz
" E和R是为了保持与Chrome中的SurfingKeys的键位一致
noremap E gT
noremap R gt

" Leader key relevant
"noremap <leader>a :action <CR>
" breakpoints
noremap <leader>b :action ViewBreakpoints<CR>
noremap <leader>c :action ChangeSignature<CR>
" 调用关系
noremap <leader>C :action CallHierarchy<CR>
" debug option
noremap <leader>d :action ChooseDebugConfiguration<CR>
" error description
noremap <leader>e :action ShowErrorDescription<CR>
" 同样也是debug，因为d已经被ChooseDebugConfiguration占领, 所以就放在了d键隔壁. 当然也可以理解成fu*k it up
noremap <leader>f :action DebugClass<CR>
"noremap <leader>g :action <CR>
" hide all
noremap <leader>h :action HideAllWindows<CR>
" import
noremap <leader>i :action Maven.Reimport<CR>
" jump to next error
noremap <leader>j :action GotoNextError<CR>
" 同样也是j, 不过是反向的, 同时也考虑到不要占用k, 所以使用了大写表示反向
noremap <leader>J :action GotoPreviousError<CR>
"noremap <leader>k :action <CR>
" light up
noremap <leader>l :action HighlightUsagesInFile<CR>
" mute breakpoints
noremap <leader>m :action XDebugger.MuteBreakpoints<CR>
" 方法继承关系
noremap <leader>M :action MethodHierarchy<CR>
" 因为属于breakpoint范畴的功能, 所以就选择了b和m的隔壁
noremap <leader>n :action ToggleLineBreakpoint<CR>
" open file path
noremap <leader>o :action ShowFilePath<CR>
" quit
noremap <leader>q :wq<CR>
" return
noremap <leader>r :action Rerun<CR>
" structure
noremap <leader>s :action FileStructurePopup<CR>
" Windows或者MacOS的快捷键都与t相关, 所以选择t作为键
noremap <leader>t :action Refactorings.QuickListPopupAction<CR>
" class继承关系
noremap <leader>T :action TypeHierarchy<CR>
" usage
noremap <leader>u :action ShowUsages<CR>
" vcs
noremap <leader>v :action Vcs.QuickListPopupAction<CR>
"noremap <leader>w :action <CR>
"noremap <leader>x :action <CR>
"noremap <leader>y :action <CR>
"noremap <leader>z :action <CR>
" 个人习惯
noremap <leader>` :action SelectInProjectView<CR>
" 粘贴剪贴板寄存器的内容
noremap <leader>; "*p
```

