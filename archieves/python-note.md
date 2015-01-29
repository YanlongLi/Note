# Python Note

## 基本语法

### 命令行参数`sys.argv`

### 单引号和双引号字符串的区别

## 变量类型

### 赋值

`a, b, c = 1, 2, 'john'`

### 数据类型

Number, String, List, Tuple, Dictionary

### Number

immutable 数据类型。

- int 
- long
- float
- complex

#### 数学函数

```
数学函数
+-----------------+-----------------+-----------+-----------+
| abs(x)          | ceil(x)         | cmp(x, y) | exp(x)    |
| fabs(x)         | floor(x)        | log(x)    | log10(x)  |
| max(x1, x2,...) | min(x1, x2,...) | modf(x)   | pow(x, y) |
| round(x [,n])   | sqrt(x)         |           |           |
+-----------------+-----------------+-----------+-----------+

随机函数
+-------------+-----------------------------------+---------------+
| choice(seq) | randrange ([start,] stop [,step]) | random()      |
| seed([x])   | shuffle(lst)                      | uniform(x, y) |
+-------------+-----------------------------------+---------------+
 
三角函数
+------------+-------------+---------+-------------+
| acos(x)    | asin(x)     | atan(x) | atan2(y, x) |
| cos(x)     | hypot(x, y) | sin(x)  | tan(x)      |
| degrees(x) | radians(x)  |         |             |
+------------+-------------+---------+-------------+

常量
+----+---+
| pi | e |
+----+---+
```

### String

在字符串上可进行的操作

`+ * [] [:]`

- in
- not in
- r/R: raw String
- %: string formating

**三引号**

[String 格式控制符][python string]

#### [String Method][python build-in string methods]
### List
 
在List上进行的操作

`+ * [] [:]`

**del*: delete an element
**len(lst)**: length of list

[List内置函数][python built-in list methods]

### Tuple

**Tuple: Read-Only List**

在Tuple上进行操作

### Dictonary

初始化

```
dict1 = dict(name="lan", age=12, address="some")
dict2 = dict([("name","lan"),("age",12),("address","some")])
```

在Dictionary上进行的操作

```python
dict = {} 
dict['one'] = "This is one" 
dict[2]     = "This is two" 
 
tinydict = {'name': 'john','code':6734, 'dept': 'sales'} 
 
print dict['one']       # Prints value for 'one' key 
print dict[2]           # Prints value for 2 key 
print tinydict          # Prints complete dictionary 
print tinydict.keys()   # Prints all the keys 
print tinydict.values() # Prints all the values 
```

### Set集合

```
set1 = set([1,2,3,4,5])
set2 = set([3,4,5,6,7])

set1 - set2
set1 | set2
set1 & set2
set1 ^ set2
```

### 类型转换

1. 类型名称可以作为函数使用

```
+-----------------------+-------------------------------------------------------------------------+
| int(x [,base])        | Converts x to an integer. base specifies the base if x is a string.     |
| long(x [,base] )      | Converts x to a long integer. base specifies the base if x is a string. |
| float(x)              | Converts x to a floating-point number.                                  |
| complex(real [,imag]) | Creates a complex number.                                               |
| str(x)                | Converts object x to a string representation.                           |
| repr(x)               | Converts object x to an expression string.                              |
| eval(str)             | Evaluates a string and returns an object.                               |
| tuple(s)              | Converts s to a tuple.                                                  |
| list(s)               | Converts s to a list.                                                   |
| set(s)                | Converts s to a set.                                                    |
| dict(d)               | Creates a dictionary. d must be a sequence of (key,value) tuples.       |
| frozenset(s)          | Converts s to a frozen set.                                             |
| chr(x)                | Converts an integer to a character.                                     |
| unichr(x)             | Converts an integer to a Unicode character.                             |
| ord(x)                | Converts a single character to its integer value.                       |
| hex(x)                | Converts an integer to a hexadecimal string.                            |
| oct(x)                | Converts an integer to an octal string.                                 |
+-----------------------+-------------------------------------------------------------------------+
```

## 运算符

### 算术运算符

多了两个 `**` `//`

对应有 `**=` `//=`

### 比较运算符

多了一个 `<>`

### 逻辑运算符

`and` `or` `not`

### 位运算符(bitwise operators)

`&` `|` `^` `~` `<<` `>>`

### 成员操作符(member operator)

`in` `not in`

## 循环


循环控制: **break continue pass**


## [Date and Time][python date and time]

## Functions

## Other

### 函数默认值共享

```
def f(a,L=[]):
	L.append(a)
	return L

print f(1) # [1]
print f(2) # [1,2]
print f(3) # [1,2,3]

### Solution
def f(a,L=None):
	if L is None
		L = []
	L.append(a)
	return L

```

### 函数参数可以通过位置或名称绑定
### Lambda表达式

```
def make_increment(step):
	return lambda x: x+step

add_one = make_increment(1)

print add_one(12)
print add_one(100)

```
### filter map reduce

- `filter(function, sequence)`
- `map(function, sequence)`
- `reduce(function, sequence)`

### 列表式推倒

[表达式 for 变量 in 列表]    或者  [表达式 for 变量 in 列表 if 条件]

可以做filter，可以做map

- `lst = [x ** 2 for x in Range(1,10)]`
- `lst = map(lambda x: x ** 2, Range(1,10))`

```
[(x,y) for x in (1,2,3) for y in (2,3,4)] ## 笛卡尔积
[(x,y) for x in (1,2,3) for y in (2,3,4) if x!=y] ##[(1, 2), (1, 3), (1, 4), (2, 3), (2, 4), (3, 2), (3, 4)]
```

### 集合推导式

`set1 = {x for x in 'abcde' if x not in 'abc'}`
转置矩阵

```
matrix = [
    [1,2,3,4,5],
    [6,7,8,9,10],
    [11,12,13,14,15]
]
transpose = [[row[i] for row in matrix] for i in range(5)]
print transpose # [[1, 6, 11], [2, 7, 12], [3, 8, 13], [4, 9, 14], [5, 10, 15]]

list(zip(*matrix)) ## 用zip实现
```

## Package

- **numpy**
- **pandas**
- ***matplotlib*


[python string]: http://www.tutorialspoint.com/python/python_strings.htm
[python build-in string methods]: http://www.tutorialspoint.com/python/python_strings.htm
[python built-in list methods]: http://www.tutorialspoint.com/python/python_lists.htm
[python date and time]: http://www.tutorialspoint.com/python/python_date_time.htm
