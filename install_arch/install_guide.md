
# Install Guide of Archlinux

## 前期准备

### 1. 检查`UEFI`模式

```
efival -l
```

### 2. 连接网络

### 3. 设置源

```
## 北京交通大学源
Server = http://mirror.bjtu.edu.cn/ArchLinux/$repo/os/$arch
## 上海交通大学
Server = http://ftp.sjtu.edu.cn/archlinux/$repo/os/$arch
## 163
Server = http://mirrors.163.com/archlinux/$repo/os/$arch
## 华中科大
Server = http://mirrors.hust.edu.cn/archlinux/$repo/os/$arch
```

### 4. 分区

- /
- root
- home

```
cgdisk /dev/sda
```

### 5. 格式化分区

```
mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/sda2
mkswap /dev/sda3
```

## 系统安装(确保网络正常连接)

### 挂载目标分区

```
mount /dev/sda1 /mnt
mkdir /mnt/home
mount /dev/sda2 /mnt/home
swapon /dev/sda3
```

### 安装基础系统

```
pacstrap -i <挂载点> base base-devel
```

#### 生成fstab

```
genfstab -U -p <挂载点> >> <挂载点>/etc/fstab
```
#### 检查fstab是否正确(一般不用改)

	>  所在分区的 <pass> 应该为 1，其他分区为 2, swap 分区的应该为 0


## 配置基础系统

### 进入新系统

```
archroot <挂载点> /bin/bash
```

### 设置Locale

```
/etc/locale.gen
```

### 生成locale

```
locale-gen
```

### 设置默认语言

```
echo LANG=en_US.UTF-8 > /etc/locale.conf
```

### 设置时区

```
ln -s /usr/share/zonginfo/Asia/Shanghai/ /etc/localtime
```

### 设置硬件时间

```
hwclock --systohc --utc
```

### (可选)内核模块

### 设置主机名称

```
echo <主机名> > /etc/hostname
sed -i '/127.0.0.1/s/$/\t<主机名>/' /etc/hosts
```

### 创建ramdisk

```
mkinitcpio -p linux
```

### 安装引导器 Syslinux
#### 	安装syslinux [](https://wiki.archlinux.org/index.php/Syslinux#MBR_partition_table)

```
syslinux-install_update -i -m
```

#### 	编辑`/boot/syslinux/syslinux.cfg`

### 为root创建密码 添加桌面用户

```
passwd
useradd -m -g users -s /bin/bash <username>
passwd <username>
```

### 提升权限

```
pacman -S sudo bash-completion
EDITOR=vim visudo
gpasswd -a $USER wheel
```

### 关闭tab补全时候的beep声音

add `set bell-style none` to `/etc/inputrc`

### 卸载分区并重启

```
exit
unmount -R /mnt
reboot
```

## 桌面管理

### 声音管理

```
pacman -S alsa-utils

```

### 图形界面

[nvidia driver search](http://www.geforce.com/drivers)
```
lspci | grep VGA
```

### 安装X Window
```
pacman -S xorg-server xorg-server-utils    # 安装 Xorg Server
pacman -S xf86-input-synaptics    # 可选，触摸板支持
pacman -S ttf-dejavu wqy-microhei    # 可选，Dejavu 与文泉驿 - 微米黑字体
```

### 安装窗口管理器/桌面环境

```
pacman -S openbox openbox-themes
pacman -S xorg-xinit
$ cp /etc/skel/.xinitrc ~
```

### 安装输入法

```
fxitc fcitx-configtool fcitx-cloudpinyin
fcitx-gtk2 fcitx-gtk3 fcitx-qt4
```

add below to /etc/profile

```
export XIM_PROGRAM=fcitx
export XIM=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
```

### yaourt

**/etc/pacman.conf**

```
[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/$arch

[archlinuxcn]
SigLevel = Never
Server = http://repo.archlinuxcn.org/$arch

```

## 基础配置文件


```
/etc/pacman.d/mirrorlist
.xinit
.bashrc
.bash_profile
.config/openbox
```

## 安装软件

### xsel xclip udisks2 p7zip scrot zip unzip nitrogen

### convmv cups filezilla jdk7

### rsync openssh mlocate

**.config/nitrogen**

### xterm

`.Xresources`

#### transset-df

add below to **.bashrc**

```
[ -n "$XTERM_VERSION" ] && transset-df -a 0.85 >/dev/null
```

### xscreensaver

`.xscreensaver`

### conky

**.conkyrc**

### tint2

**.config/tint2/**

#### volwheel/volumicon cbatticon/batterymon acpi 

#### compton/xcompmgr

#### xfce4-notifyd xfce4-notifyd-config

### firefox thunderbird

#### firefox插件[见][firefox-chrome]

#### chromium插件[见][firefox-chrome]


### thunar thunar-volman gthumb feh

### apvlv llpp

**/home/qingxiao/.config/llpp.conf**

### git [setup git][]

**.gitconfig**

### gvim

- **.vimrc**
- **.vim/**

#### vim 插件

```
pacman -S vim-auto-pairs vim-runtime vim-supertab ctags
```

### texlive-lang texlive-most

**/usr/share/texmf-dist/tex/latex/ctex/fontset/ctex-xecjk-winfonts.def**

#### texmaker

### libreoffice

### 字体

#### windows 字体

copy file to **/usr/share/fonts/zh_CN/TrueType**

```
cd /usr/share/fonts/zh_CN/TrueType
sudo mkfontscale
sudo mkfontdir
sudo fc-cache /usr/share/fonts/zh_CN/TrueType
```

#### adobe 字体[download link][adobe font]

unzip file to **/usr/share/fonts/Adobe**

#### ttf-google-fonts-git

#### 常用命令

```
fc-list
```

### gvfs gvfs-mtp

**/usr/lib/udev/rules.d/51-android.rules**

### shadowsocks

**/etc/shadowsocks/xx.json**

```
systectl start shadowsocks@xx
```

## Other Software

### banshee vlc mplayer calibre
### mypaint gimp inkscape ydcv

[firefox-chrome]: http://blog.lx1d.cn/post/non-category/google_app
[adobe font]: https://code.google.com/p/gthemes-china/downloads/list
[setup git]: http://blog.lx1d.cn/post/non-category/setupgit

