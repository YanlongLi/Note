
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

## Struct Compare

```c++
struct Result{
	int factor;
	int remain;
	Result(int f, int r):factor(f),remain(r){}
};

bool operator==(const Result &r1, const Result &r2){
	return r1.factor == r2.factor
		&& r1.remain == r2.remain;
}
```

if struct is desined to be used as key of map, operator< must be override

```c++
bool operator<(const Result &r1, const Result &r2){
	return r1.factor < r2.factor
		&& r1.remain < r2.remain;
}
```
