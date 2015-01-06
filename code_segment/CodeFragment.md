

## Bash Commands
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


## C++
### Split String `strtok`

```C++
#include <stdio.h>
#include <string.h>

int main ()
{
  char str[] ="- This, a sample string.";
  char * pch;
  printf ("Splitting string \"%s\" into tokens:\n",str);
  pch = strtok (str," ,.-");
  while (pch != NULL)
  {
    printf ("%s\n",pch);
    pch = strtok (NULL, " ,.-");
  }
  return 0;
}
```

