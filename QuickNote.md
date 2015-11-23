## Tornado, StaticFileHandler

[static file handler](http://stackoverflow.com/questions/21248222/how-can-tornado-serve-a-single-static-file-at-an-arbitrary-location)

## YouCompleteMe

c++ syntastic

(issues)[https://github.com/Valloric/YouCompleteMe/issues/303]

`echo | clang -std=c++11 -stdlib=libc++ -v -E -x c++ -`

(ycm_extra_conf.py)[https://gist.github.com/locojay/4950253]

## complete solution for vim

### code completion

- [neocomplete](https://github.com/Shougo/neocomplete.vim)
- [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

### snippets completion

engine: 
- [ultisnips](https://github.com/SirVer/ultisnips) or
- [neosnippet](https://github.com/Shougo/neosnippet.vim)

snipet file:
- [neosnippet-snippets](https://github.com/Shougo/neosnippet-snippets)
- [vim-snippets](https://github.com/honza/vim-snippets)
  - snippets/* for snipMate format
  - UltiSnips/* for UltiSnips format


## solution for YouCompleteMe and UltiSnippets key coflict

[discuss on stackoverflow](http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme)

solution 1: 

change `g:UltiSnippetsExpandTrigger` to some key else except for `<tab>`,
for example, `let g:UltiSnippetsExpandTrigger = '<c-j>'`

solution 2:

still use tab for expand trigger, but change map of tab in YCM.
YCM uses tab for `g:ycm_key_list_select_completion = []`,
for exmaple, `let g:UltiSnippetsExpandTrigger = ['<C-n>', '<Down>']`

solution 3:
[issue](https://github.com/Valloric/YouCompleteMe/issues/36#issuecomment-15451411)


## App quick access

[Alternative to alfread](http://alternativeto.net/software/alfred/?platform=linu)x

- MAC: alfred
- Linux:
  - synapse
  - mutate

config for synapse:
[Wiki configure](http://synapse.zeitgeist-project.com/wiki/index.php?title=Plugins/Configuration)
[stack overflow](http://askubuntu.com/questions/174838/can-i-change-synapse-shortcut-to-super-windows-key-alone)
```
.config/synapse/config.json
{
  "ui" : {
    "shortcuts" : {
      "activate" : "Super_L" // or disable it with "", then config it using Openbox
    }
  }
}
```

[Zeitgeist](https://wiki.archlinux.org/index.php/Zeitgeist)

## Access to Windows shared files under linux

sudo mount -t smbfs -o username=lansunlong //192.168.0.126/Music/ /mnt/music

umount /mnt/localfolder 


## enable X11Forwarding for ssh

ref to [archwiki](https://wiki.archlinux.org/index.php/Secure_Shell#X11_forwarding)
fix bug `X11 forwarding request failed on channel 0`, [link](http://www.cyberciti.biz/faq/how-to-fix-x11-forwarding-request-failed-on-channel-0/)

## pdnsd + dnsmasq + shadowsocks
dnsmasq 根据预定义的规则进行dns解析，并对请求做处理，比如加tag. 
dnsmasq自己不做dns解析,作为一个代理的功能将解析转给其他服务,比如pdnsd.

根据dnsmasq在请求包上加的tag,比如fuckgfw,添加iptables将对应包转给shadowsocks.

- http://aenes.com/post/740.html
- http://hong.im/2014/07/08/use-ipset-with-shadowsocks-on-openwrt/
- http://www.jianshu.com/p/8b130d8ca804
- http://abublog.com/openwrt_shadowsocks_dnsmasq_fuckwall.html
- https://www.techllage.com/179-openwrt-zhe-teng-xiao-ji-di-er-pianpdnsd-chinadns-dnsmasq-jie-j/0


### xterm下中文标题乱码解决

参见[帖子](http://forum.ubuntu.org.cn/viewtopic.php?f=8&t=259668)

在xterm配置文件`.Xresources`中加入`*VT100*utf8Title:true`
执行`xrdb -merge .Xresources`

### 光驱操作

* 显示`dd`操作的进度

To see the progress of dd once it's running, open another terminal and enter:

`sudo kill -USR1 $(pgrep ^dd)`

This will display dd progress in the dd terminal window without halting the process. If you would like to get regular updates of the dd progress, then enter:

`watch -n5 'sudo kill -USR1 $(pgrep ^dd)'`

watch will probe the dd process every -n seconds (-n5 = 5 seconds) and report without halting it.

Note the proper single quotes in the commands above.


* 挂载ISO文件

```
# mount -t iso9660 -o ro,loop /path/to/file.iso /mount-point
# umount /mount-point
```

* 拷贝光驱文件到ISO

[archwiki](https://wiki.archlinux.org/index.php/Optical_disc_drive#Reading_an_ISO_image_from_a_CD.2C_DVD.2C_or_BD)

```
$ blocks=$(isosize -d 2048 /dev/sr0)
$ echo "That would be $(expr $blocks / 512) MB"
$ dd if=/dev/sr0 of=isoimage.iso bs=2048 count=$blocks
```

### Mount remote directory over ssh

```
sshfs user@example.org: ~/remote
fusermount -u /path/to/mount/point
```


### ranger 命令行文件浏览器

### Geogebra 工具

### JabRef与Vim通信

[文献管理软件 JabRef 快速入门](http://blog.solrex.org/articles/jabref-quick-guide.html)

JabRef 是使用 vim server 和 vim 通信的，所以这要求双方使用同样的 vim server 名。
在 JabRef 一端，Options->Preferences->External Programs->Vim Server Name 文本框中就是 vim server 名，
你可以使用默认的 vim 服务器名 vim，也可以修改成任意名字，比如 solrexvim；
在 vim 一端，编辑 LaTeX 文件时不要使用通常的命令启动 vim，要加上 vim 服务器名，
比如 vim --servername solrexvim --remote-silent xxx.tex，这条命令的意思是：
使用 vim 连接到服务器 solrexvim 修改 xxx.tex 文件，如果该服务器不存在，就创建它。

等 JabRef 和 Vim 都启动了以后，如果在编辑 tex 文件的时候想加入某条文献的引用，
只需要在 JabRef 上方的工具栏中先选择出 Vim，然后再点击该图标，vim 光标所在位置就会自动加入该文献的引用。

### limit directory size in ftp server

[vsftp witu quotas](http://infofreund.de/user_quotas_vsftpd_en/)


### WinPE

[天意U盘维护系统](http://www.winpe.cc/)

### nginx 反向代理

[link](https://www.packtpub.com/books/content/using-nginx-reverse-proxy)
[link](http://touzi.github.io/Ubuntu下nginx设置多端口转发(反向代理)/)

* proxy_pass
* rewrite
* proxy_set_header
[ref to](http://wiki.nginx.org/HttpProxyModule#proxy_pass)

### nginx test config file

[from](http://askubuntu.com/questions/443775/nginx-failing-to-reload-how-to-track-down-why)

```
nginx -c /etc/nginx/nginx.conf -t 
```


### 单独设置文件目录的权限给用户 `ACL`

```
setfacl -m user:user1:rw file2
setfacl -m group:group1:rw file2
```

[link](http://unix.stackexchange.com/questions/47645/group-within-group-file-permissions)

### vsftpd

change ftp user directory without change home directory

[link](http://unix.stackexchange.com/questions/94603/limit-ftp-access-only-to-the-var-www-with-vsftpd)

### accessgoole

[accessgoogle](https://github.com/hscaizh/accessgoogle)


## pandoc

### pandoc xelatex with Chinese

pandoc to pdf file with Chinese need using xelatex and select the main font-name

[link](https://github.com/jgm/pandoc/wiki/Pandoc-with-Chinese)

`pandoc from.md -o to.pdf --latex-engine=xelatex -V mainfont=WenQuanYi\ Micro\ Hei\ Mono`

## linux default application

### set default application

```
xdg-mime query filetype <some file path>
xdg-mime query default <application/pdf>
xdg-mime default llpp.desktop application/pdf
```

## usage of rsync

### start rsync daemon

```
systemctl start rsyncd.service
```

### `/etc/rsyncd.conf`

```
man rsyncd.conf
```

### connnect to rsync daemon

```
rsync -av hostname::module_name # list files
rsync -av hostname::module_name /dest/path # copy files
```

### Problems

1. how to config authorized user?

[config example][rsync config example]

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

[someone et al. year][latex natbib]

[Bibliography and citation style][latex citation style]

### [PDF file Presentation]

## html

- 设置`charset`
`<meta http-equiv="content-type" content="text/html; charset=UTF-8">`
- 链接外部CSS文件
`<link rel="stylesheet" type="text/css" href="mystyle.css">`

## Vim

## disable Syntastic check for some fileltype

```
let g:syntastic_somefiletype_checkers = [] 
```

### revert lines

[doc](http://vim.wikia.com/wiki/Reverse_all_lines)

`:g/^/m0`

under Unix-like system, `tac` command would be helpfull

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

`rename 's/.xls/.ods/g' *.xls` 重命名多个文件 

`echo "this_is_a_test" | sed -r 's/_([a-z])/\U\1/g'` 下划线转驼峰 

`mencoder mf://*.jpg -mf fps=50:type=jpg -ovc raw -oac copy -o out50fps.avi` 按照字母表顺序将所有jpeg文件合并成一个50帧每秒的视频

### 修改用户名

[archwiki](https://wiki.archlinux.org/index.php/Change_username)

```
usermod -l NewUser -d /home/NewUser -m OldUser
```
- `-l` 修改登录用户名
- `-c` 修改实际的用户名
- `-d` 修改登录后的使用路径
- `-m` 修改登录名称的同时将目录名称一起修改

修改组名称
```
groupmod -n NewUser OldName
```

### AWK
- 打印文件的奇数行`awk 'NR%2'`

### 提取文件名称和后缀

[unix-linux-extract-filename-and-extension-in-bash][]

```
for filename in `ls *.*`
do
	name=${filename%%.*};
	ext=${filename##*.};
	echo $name.$ext;
done
```

## Other

### do not bell on tab-completion in linux

add `set bell-style none` to `/etc/inputrc`

### [MyPaint基础小教程][]

### qv4l2
camera setting

### [Mathjax 符号对照表][mathjax symbols]

![mathjax symble](_img/mathjax_.png)

### [farbox协作规则][farbox editor]

### Split cue file to flac

[cue spliting][] `shnsplit`

### Convert single ape file to ape

```bash
ffmpeg -i inputaudio.ape outputaudio.flac
```

## To-Read

- [Markdown and reStructuredText][]
- [Draw Presentable Trees][pymag-trees]: algorithms to draw trees

## Other

[unofficial user repo for archlinux][]




[unofficial user repo for archlinux]: https://wiki.archlinux.org/index.php/Unofficial_user_repositories#kps

[rsync config example]: http://www.jveweb.net/en/archives/2011/01/running-rsync-as-a-daemon.html
[WikiBooks-Boxes]: http://en.wikibooks.org/wiki/LaTeX/Boxes
[unix-linux-extract-filename-and-extension-in-bash]: http://www.cyberciti.biz/faq/unix-linux-extract-filename-and-extension-in-bash/

[Markdown and reStructuredText]: https://gist.github.com/dupuy/1855764
[MyPaint基础小教程]: https://forum.suse.org.cn/viewtopic.php?f=6&t=900
[vim resize window]: http://vim.wikia.com/wiki/Resize_splits_more_quickly
[latex natbib]: http://en.wikibooks.org/wiki/LaTeX/Bibliography_Management#Natbib
[latex citation style]: http://sites.stat.psu.edu/~surajit/present/bib.htm
[PDF file Presentation]: http://sites.stat.psu.edu/~surajit/present/pdf.html
[mathjax symbols]: http://www.lyyz.net/blog/user1/zyair/archives/2012/570.html
[farbox editor]: http://help.farbox.com/read/basic-writting

[cue spliting]: https://wiki.archlinux.org/index.php/APE+CUE_Splitting

[pymag-trees]: http://billmill.org/pymag-trees/
