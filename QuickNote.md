<meta http-equiv="content-type" content="text/html; charset=UTF-8">

## Latex
### 带边框的文本
- 包：framed
- environment: framed
- [WikiBooks-Boxes][]

### 字体颜色
- 包：color
- command: \textcolor{red}{text}
- command: \colorbox{red}{text}

### strike-out
- 包：ulem
- command：\soul{text}
- ulem包会修改\empth{}的字体，
  - \normalem
  - \ULforem

### cite style
[someone et al. year][latex natbib]
[Bibliography and citation style][latex citation style]

### [PDF file Presentation]


## html

- 链接外部CSS文件
`<link rel="stylesheet" type="text/css" href="mystyle.css">`



## javascript
### 按照字母序比较字符串
`string.localeCompare()`
[tutorialspoint][js localeCompare]

### 事件处理的运行环境
通过设置属性注册事件处理函数`e.onClick = function(){}`: _this指目标对象_
`addEventListener("click", function(){}, true)`： _this指目标对象_
`attachEvent("onclick", function(){})`： 作为函数调用，_this指全局对象windows_
调用顺序：

1. 设置属性/HTML属性
2. addEventListener()
3. attachEvent()

事件冒泡和捕获的顺序相反

## CSS
*选择器*[CSS Selector][]

- 组选择器

        h1, h2, h3, .class1{}

- 派生(后代)选择器

        li{}
        strong{}
        li string{}

- 子元素选择器

        h1 > strong {}

- 相邻兄弟选择器

        h1 + p {}

## Markdown
`<meta http-equiv="content-type" content="text/html; charset=UTF-8">`


## Emacs
[Magit][]
[常用](http://book.douban.com/review/6602480/)
### 大小写

	从光标位置开始，处理单词后半部分

	capitalize-word (M-c) ;; 单词首字母转为大写
	upcase-word (M-u)     ;; 整个单词转为大写
	downcase-word (M-l)   ;; 整个单词转为小写

	从光标位置开始，处理单词前半部分

	negtive-argument; capitalize-word (M-- M-c) ;; 单词首字母转为大写
	negtive-argument; upcase-word (M-- M-u)     ;; 整个单词转为大写
	negtive-argument; downcase-word (M-- M-l)   ;; 整个单词转为小写

	改变选定区域的大小写

	downcase-region (C-x C-l) ;; 选定区域全部改为小写
	upcase-region (C-x C-u)   ;; 选定区域全部改为大写

### 输入tab键
C-q <tab> 或者M-i
### 列编辑
[列编辑模式](http://blog.sina.com.cn/s/blog_61107c450100kjqg.html)
选择区域，注意起始光标位置和终止光标位置不在同一列后续可选操作

- 在这块区域插入空白的方格， 用C-x r o
- 删除这块区域用 C-x r d （这种删除掉之后不留空白）
- 删除区域 C-x r C (删掉之后原位置保留为空)
- 复制并删除这块区域用 C-x r k
- 粘贴刚才C-x r k复制的区域用C-x r y
- 用字符替换选中区域用C-x r t

复杂操作：

- C-x r r  copy-rectangle-to-register 将选定的矩形区域复制到某个寄存器  
> 选中去区域后  C-x r r 将选中区域复制到寄存器， 在输入这组键后命令栏会等待你输入寄存器号，这时随便输入一个数字即可，不过的记得它，因为待会儿粘贴的时候还得用到这个寄存器号。
- C-x r i 插入寄存器的内容  
> 输入此键后再输入寄存器号可将寄存器中的内容插入到当前区域。

### Text-Based Tables
[Text-Based Table][]
M-x <table-command>
### 拆分窗口
[split window][]
[split window2][]


	+----------+--------------------+----------+
	|Purpose   |Command             |Key       |
	|          |Name                |          |
	+----------+--------------------+----------+
	|spliet    |split-window-below  |Ctrl+x 2  |
	|top/bottom|                    |          |
	+----------+--------------------+----------+
	|split     |split-window-right  |Ctrl+x 3  |
	|left/right|                    |          |
	+----------+--------------------+----------+
	|unsplit   |delete-other-windows|Ctrl+x 1  |
	|all       |                    |          |
	+----------+--------------------+----------+
	|remove    |delete-window       |Ctrl+x 0  |
	|current   |                    |          |
	|pane      |                    |          |
	+----------+--------------------+----------+
	|cycle     |pane other-window   |Ctrl+x o  |
	|cursor to |                    |          |
	|next      |                    |          |
	+----------+--------------------+----------+
	
*adjust size*
	
	+-----------------------------------+----------+---------------+
	|enlarge-window                     |Ctrl+x ^  |increase       |
	|                                   |          |height         |
	+-----------------------------------+----------+---------------+
	|shrink-window                      |none      |decrease       |
	|                                   |          |height         |
	+-----------------------------------+----------+---------------+
	|enlarge-window-horizontally        |Ctrl+x }  |increase       |
	|                                   |          |width          |
	+-----------------------------------+----------+---------------+
	|shrink-window-horizontally         |Ctrl+x {  |decrease       |
	|                                   |          |width          |
	+-----------------------------------+----------+---------------+
	|shrink-window-if-larger-than-buffer|Ctrl+x -  |shrink a       |
	|                                   |          |window to      |
	|                                   |          |fit its        |
	|                                   |          |content.       |
	+-----------------------------------+----------+---------------+
	|balance-windows                    |Ctrl+x +  |make all       |
	|                                   |          |windows same   |
	|                                   |          |width/height   |
	+-----------------------------------+----------+---------------+


## Vim
### ctags

#### generate tags file of current directory
```bash
ctags -R .
ctags -R -f . ./directory/to/store/tags
```
### taglist
```vimscript
:TlistToggle
```
### Alt Macros in console version of vim

```bash
set convert-meta on
```
then, `set <m-i>=^[i`

### table-mode


| <Leader>tm table mode 开关
| <Leader>tt 使用g:table_mode_delimiter定义的分隔符插入表格
| <Leader>T 使用用户输入的分隔符插入表格
| <Leader>tr 重新对齐
| [| 移动到前一个表格
| ]| 移动到下一个表格
| {| 移动到上面一个表格
| }| 移动到下面一个表格
| || 插入表头边框
| <Leader>tdd 删除一行
| <Leader>tdc 删除一列

### [Resize splits window more quickly][vim resize window]
```vimscript
:resize/res 60
:resize +5
:resize -5

:vertical resize 80
:vertical resize +5
:vertical resize -5
```
## Bash

### AWK
- 打印文件的奇数行`awk 'NR%2'`

### 提取文件名称和后缀

[unix-linux-extract-filename-and-extension-in-bash][]

```
for filename in `ls *.*`
do
	$name=${filename%%.*};
	$ext=${filename##*.};
	echo $name+$ext;
done
```

## Git
几个概念:

- 仓库
- 提交
- 分支
- 日志

```git
$ git remote add origin some-url #设置仓库
$ git commit --amend -m "commit message." #修补提交（修补最近一次的提交而不创建新的提交）
$ git push -u origin master #将代码从本地传回到仓库
$ git branch checkout master # 切换到主分支

$ git log # 查看提交信息
$ git log --pretty=oneline # 以整洁的单行形式显示提交信息
$ git log --stat # 查看提交信息及更新的文件

$ git archive --format tar --output /path/to/file.tar master # 将 master 以 tar 格式打包到指定文件
```
使用 Git 的一些基本守则：
当要commit/提交patch时：

- 使用 git diff --check 检查行尾有没有多余的空白
- 每个 commit 只改一件事情。如果一个文档有多个变更，使用 git add --patch 只选择文档中的部分变更进入 stage
- 写清楚 commit message

### the branching strategy and release management.
两个branch of infinite lifetime:

- origin/master: code of `HEAD` always reflect the `product-ready` state
- origin/develop: code of `HEAD` always relect the latest changes for next release

principle of `master` and `develop`:
> When the source code in the develop branch reaches a stable point and is ready to be released, all of the changes should be merged back into master somehow and then tagged with a release number. 

Under this condition, a `git hook script` can be used to generate software of new version.

article [][] gives three type of support branches

- feature branch
	- branch off from `develop` and merged back into `develop` eventually

			$ git checkout -b myfeature develop #Switched to a new branch "myfeature"
			(do something)
			$ git checkout develop #Switched to branch 'develop'
			$ git merge --no-ff myfeature #Updating
			(Summary of changes)
			$ git branch -d myfeature #Deleted branch myfeature
			$ git push origin develop 

- release branch
- hotfix branch

## Other
### do not bell on tab-completion in linux
add `set bell-style none` to `/etc/inputrc`

### [MyPaint基础小教程][]

### [Mathjax 符号对照表][mathjax symbols]

### [farbox协作规则][farbox editor]

## To-Read
- [Markdown and reStructuredText][], [GitHub Mark][]

[Text-Based Table]: https://www.gnu.org/software/emacs/manual/html_node/emacs/Text-Based-Tables.html
[split window]: http://ergoemacs.org/emacs/emacs_winner_mode.html
[split window2]: https://www.cs.utah.edu/dept/old/texinfo/emacs18/emacs_21.html
[CSS Selector]: http://www.w3school.com.cn/css/css_syntax_descendant_selector.asp
[Magit]: https://github.com/magit/magit#installing-from-tarball
[WikiBooks-Boxes]: http://en.wikibooks.org/wiki/LaTeX/Boxes
[unix-linux-extract-filename-and-extension-in-bash]: http://www.cyberciti.biz/faq/unix-linux-extract-filename-and-extension-in-bash/

[GitHub Mark]: https://github.com/github/markup
[Markdown and reStructuredText]: https://gist.github.com/dupuy/1855764
[MyPaint基础小教程]: https://forum.suse.org.cn/viewtopic.php?f=6&t=900
[js localeCompare]: http://www.tutorialspoint.com/javascript/string_localecompare.htm
[vim resize window]: http://vim.wikia.com/wiki/Resize_splits_more_quickly
[latex natbib]: http://en.wikibooks.org/wiki/LaTeX/Bibliography_Management#Natbib
[latex citation style]: http://sites.stat.psu.edu/~surajit/present/bib.htm
[PDF file Presentation]: http://sites.stat.psu.edu/~surajit/present/pdf.html
[mathjax symbols]: http://www.lyyz.net/blog/user1/zyair/archives/2012/570.html
[farbox editor]: http://help.farbox.com/read/basic-writting
