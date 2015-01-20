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

[python string]: http://www.tutorialspoint.com/python/python_strings.htm
[python build-in string methods]: http://www.tutorialspoint.com/python/python_strings.htm
[python built-in list methods]: http://www.tutorialspoint.com/python/python_lists.htm
[python date and time]: http://www.tutorialspoint.com/python/python_date_time.htm
