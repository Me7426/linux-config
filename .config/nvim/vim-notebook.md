#### vim

##### default

- `:help index`: check up all built in keys
- `:map`: check all bound keys

###### window

- `^w h/l/j/k`：move cursor
- `^w H/L/J/K`：move window

##### Buffer

- `bn`: next buffer
- `bp`: previous buffer
- `bd`: close current buffer

##### 折叠

- 折叠： zc
- 递归折叠： zC
- 取消折叠： zo
- 递归取消折叠: zO
- 折叠文件中的所有： zM
- 取消文件中所有的折叠： zR
- 对第m行到第n行进行折叠： 打开折叠，使用命令： :m,nfoldopen, 关闭折叠，使用命令： :m,nfoldclose
- 在折叠中的上下移动： 打开的折叠中：[z ]z 关闭的折叠中：zj zk

#### extensions

###### Snippets

- `C-q`: triger snippets

###### vim-surround

- normal模式
  - `cs"'`: 替换双引号为单引号
  - `cst"`: 替换到引号包裹
  - `ds"`: 删除引号
  - `ysiw"`: 将当前光标处单词包裹引号(参考text-object)
- visual模式
  - `S<div>`: 包裹选中部分

###### Gitgutter

> You can jump between hunks with `[c` and `]c`. You can preview, stage, and undo hunks with `<leader>hp`, `<leader>hs`, and `<leader>hu` respectively.

- `[c`/`]c`: jump between hunks
- `<leader>hp`: preview
-  `<leader>hs`: stage
- `<leader>hu`: undo

##### NERDCommenter

- `<leader>c<sapce>`: 切换注释

##### coc-nvim

- `K`: 打开说明文档
- `[g`/`]g`: 在错误间跳转
- `gd`: 跳转到定义
- `gy`: 跳转到类型定义
- `gi`: 跳转到实现
- `gr`: 打开所有引用

##### Custom

- `C-h/C-l`: switch buffers