
[教程][jiaocheng-liaoxuefeng]

## 遍历目录

```python
import os

var directory = '/some/directory/'
for subdir, dirs, files in os.walk(directory):
  for file in subdir:
    print os.join(subdir, file)
```

isinstance(x, str)
ininstance(list, iteratible)

## 生成器
g = (x * x for x in range(10))
g.next()
for x in g:
    print x

def fib(max):
    n, a, b = 0, 0, 1 
    while n < max:
        yield b
        a, b = b, a+b
        n = n + 1
生成器函数在每次调用next()的时候执行，遇到yield的时候返回，再次执行时从上次返回的yield的地发继续执行

## 函数式


* 高阶函数
```
def add(x, y, f):
    return f(x) + f(y)
```

* map/reduce/filter

```
map(str, [1,2,3,4,5,6])
map(lambda x: x * x, [1,3,4])

reduce(lambda x, y: x * 10 + y, [1,2,3]) # 123

filter(lambda x: x %2 ==0, [1,2,3,4,5])
```

* sort
 
```
sorted([1,24,3,6,5])
sorted([1,24,3,6,5], lambda a,b: b - a)
```

* 返回函数

```
def counter():
    c = 0
    def count():
        c = c + 1
        return c
    return count

def count():
    fs = []
    for i in range(1, 4):
        def f():
             return i*i
        fs.append(f)
    return fs

f1, f2, f3 = count()
```

存在和JS相同的问题，对i的引用

* 装饰器

* 偏函数

```
def int2(x, base=2):
    return int(x, base)
或者
import functools
int2 = functools.partial(int, base=2)
int2('100000')
```

## 模块和包

一个文件就是一个模块，模块的名字就是文件的名字。

多个模块可以放在一个文件夹中，叫做一个包，模块可以通过包名访问。
包结构如下

```
- mypackage
 - __init__.py
 - abc.py
 - xyz.py
```
包可以嵌套。

* 模块示例代码

```
#!/usr/bin/env python
# -*- coding: utf-8 -*-

' a test module '

__author__ = 'Michael Liao'

import sys

def test():
    args = sys.argv
    if len(args)==1:
        print 'Hello, world!'
    elif len(args)==2:
        print 'Hello, %s!' % args[1]
    else:
        print 'Too many arguments!'

if __name__=='__main__':
    test()
```
第4行是一个字符串，表示模块的文档注释，任何模块代码的第一个字符串都被视为模块的文档注释；
当直接执行该文件时，Python解释器把一个特殊变量`__name__`置为`__main__`

* 使用
 
```
import hello
hello.test()
```

使用别名

```
try:
  import cStringIO as StringIO
except ImportError: # 导入失败会捕获到ImportError
  import StringIO

```

* 作用域
正常的函数和变量名是公开的（public），可以被直接引用，比如：abc，x123，PI等；

类似`__xxx__`这样的变量是特殊变量，可以被直接引用，但是有特殊用途，
比如上面的`__author__`，`__name__`就是特殊变量，hello模块定义的文档注释也可以用特殊变量`__doc__`访问，
我们自己的变量一般不要用这种变量名；

类似`_xxx`和`__xxx`这样的函数或变量就是非公开的（private），不应该被直接引用，比如`_abc`，`__abc`等；

之所以我们说，private函数和变量“不应该”被直接引用，而不是“不能”被直接引用，
是因为Python并没有一种方法可以完全限制访问private函数或变量，但是，从编程习惯上不应该引用private函数或变量。

* 搜索路径

默认情况下，Python解释器会搜索当前目录、所有已安装的内置模块和第三方模块，搜索路径存放在sys模块的path变量中：

如果我们要添加自己的搜索目录，有两种方法：

一是直接修改sys.path，添加要搜索的目录：

```
import sys
sys.path.append('/Users/michael/my_py_scripts')
```

这种方法是在运行时修改，运行结束后失效。

第二种方法是设置环境变量PYTHONPATH，


## 类

```
#!/bin/python2

class Student(Object):
    def __init__(self, name, score):
        self._name = name
        self._score = score

    def print_score(self)
        print '%s: %s' % (self._name, self._score)
# 以__开头的变量不能被外部访问，__开头__结尾的变量为特殊变量

stu1 = Student("name", 12)
```

## 类型判断

```
import types

type('abc') == types.Stirngtype
type(u'abc') == types.UnicodeType
type(str) == type.TypeType

isinstance(stu1, Student)
isinstance(stu1, (Student, Animal))
```

对对象使用`len()`函数会自动调用对象的`__len__`方法


```
hasattr(stu1, 'name')
hasattr(obj, 'x')
hasattr(obj, 'y')

getattr(stu1, 'name')
# 如果属性不存在抛出AttributeError, 可以添加default参数
getattr(stu1, 'name', 'zhangsan')
```


[jiaocheng-liaoxuefeng]: http://www.liaoxuefeng.com/wiki/001374738125095c955c1e6d8bb493182103fac9270762a000
