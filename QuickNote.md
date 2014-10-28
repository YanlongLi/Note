<meta http-equiv="content-type" content="text/html; charset=UTF-8">

## html

- 链接外部CSS文件
`<link rel="stylesheet" type="text/css" href="mystyle.css">`



## javascript

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




[Text-Based Table]: https://www.gnu.org/software/emacs/manual/html_node/emacs/Text-Based-Tables.html
[split window]: http://ergoemacs.org/emacs/emacs_winner_mode.html
[split window2]: https://www.cs.utah.edu/dept/old/texinfo/emacs18/emacs_21.html
[CSS Selector]: http://www.w3school.com.cn/css/css_syntax_descendant_selector.asp
