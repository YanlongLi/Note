
# Learn GDB

if you want debug you program, you need compile your code with gdb support using `-g`

[GDB cheetsheet](http://users.ece.utexas.edu/~adnan/gdb-refcard.pdf)

[RMS's gdb Debugger Tutorial](http://www.unknownroad.com/rtfm/gdbtut/)

```
g++ -o main -g main.cpp
```


## Load Program
```
$> gdb main
```
## Start Debugging
```
(gdb) run <parameter>
```

program will stop when
1. enconter a break point
2. program throw an exception or segmentfault

you can examine variables and memory when program stops at somewhere \\

check where the program stops at
```
frame
```
this lists the code of line and the function.

show the call stack using command `backtrace`(bt for short):
```
b(ack)t(race)
```

you can also list the source source by `list`(l for short) command:
```
l(ist) main.cpp:12
l(ist) main.cpp:somefunc()
```

continue running
```
c(ontinue)
```
```
finish
```

## Stop GDB
```
CTRL+d
```
```
quit
```

## breakpoints

add a breakpoint using command `beak`(b for short):
```
b(reak) main.cpp:12
b(reak) main.cpp:somefunc()
```
conditional break
```
(you may want to list the source code fist)
list main.cpp:12
b main.cpp:12 if i<=0
```

list all breakpoints using command `info`(i for short):
```
i(nfo) b(reak)
```
this lists every breakpoint with a breakpoint number

delete a breakpoint using command `delete`(d for short):
```
delete <break number>
```

