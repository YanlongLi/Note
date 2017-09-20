## Bash Commands

### echo with color

see [change output color of echo](http://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux)

```
Black        0;30     Dark Gray     1;30
Red          0;31     Light Red     1;31
Green        0;32     Light Green   1;32
Brown/Orange 0;33     Yellow        1;33
Blue         0;34     Light Blue    1;34
Purple       0;35     Light Purple  1;35
Cyan         0;36     Light Cyan    1;36
Light Gray   0;37     White         1;37
```

```
echo -e "\e[1:32mSOME TEXT\e[0m"
```

### array declare
```
declare -a lst=(a b c d e f g h)
```

### iterator array

```
for ele in ${lst[@]}; do
  echo $ele
done
```

### add a blank line every line

```
sed G  <input file>
```

### add a blank line every secone line

```
sed '0~2 a\\' <input file>

awk '{print;} NR % 2 == 0 {print "";}' <input file>
```


### merge two files into one

```

convert image1.png image2.png image3.png -append result/result-sprite.png ## vertical append
convert image1.png image2.png image3.png +append result/result-sprite.png ## horizon append
```

### Map 'Caps_Lock' to 'Escape'

`xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'`

### Create a file with specific size

`dd if=/dev/zero of=testfile.txt bs=1M count=10 `

### problem of sapce in filename

originally, we use

```bash
for n in `find . -name *.cue`
do
	# bala bala bala
done
```

if space in filename, `file name`, then it will be

```
file
name
```

to fix it

```bash
find . -name *.cue -print0 | while IFS= read -r -d '' n;
do
	iconv -f gb18030 -t utf8 "${n}" -o "${n}.new" && mv "${n}.new" "${n}"
done
```

### Others
- read lines of a file

	```bash
	while read p; do
		echo $p
	done <peptides.txt
	```

- find top ten large files or directories 

	```bash
	du -s * | sort -nr | head | cut -f2 | parallel -k du -sh 
	```

- remove blank lines in file

	```bash
	sed '/^$/d' /tmp/data.txt > /tmp/output.txt 
	```
- remove blank lines using grep

	```bash
	grep . filename > newfilename	
	```

- substitute space in filename with underline

	```bash
	for f in *;do mv "$f" "${f// /_}";done
	```

- show colored git log

	```git
	git log --graph --oneline --all --decorate --color
	```
- generate a 30x30 matrix
	- fold - wrap each input line to fit in specified width

	```bash
	xxd -p /dev/urandom | fold -60| head -30| sed 's/\(..\)/\1 /g'
	```

