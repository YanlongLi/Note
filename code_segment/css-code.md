
# CSS

## CSS继承

1. 所有元素可继承：visibility和cursor

2. 内联元素和块元素可继承：letter-spacing、word-spacing、white-space、line-height、color、
font、font-family、font-size、font-style、font-variant、font-weight、text- decoration、
text-transform、direction

3. 块状元素可继承：text-indent和text-align

4. 列表元素可继承：list-style、list-style-type、list-style-position、list-style-image

5. 表格元素可继承：border-collapse

6. 不可继承的：display、margin、border、padding、background、
height、min-height、max- height、width、min-width、max-width、
overflow、position、left、right、top、 bottom、z-index、
float、clear、table-layout、vertical-align


## CSS设计技巧

[from][css design pattern]

> seperate `width` `padding/border` `margin`

### use a additional label to separate `width` and `padding/border`

```css
.box{width:300px; height:80px;}
.box .roundBox{padding:10px;}
.box .roundBox-modifed{padding:10px 15px; border:1px solid #ccc;}
```

### separate `margin`

```css
.m10{margin:10px}
.m15{margin:15px}
.m30{margin:30px}
.mt5{margin-top:5px}
.mt10{margin-top:10px}
.mt15{margin-top:15px}
.mt20{margin-top:20px}
.mt30{margin-top:30px}
.mt50{margin-top:50px}
.mt100{margin-top:100px}
.mb10{margin-bottom:10px}
.mb15{margin-bottom:15px}
.mb20{margin-bottom:20px}
.mb30{margin-bottom:30px}
.mb50{margin-bottom:50px}
.mb100{margin-bottom:100px}
.ml5{margin-left:5px}
.ml10{margin-left:10px}
.ml15{margin-left:15px}
.ml20{margin-left:20px}
.ml30{margin-left:30px}
.ml50{margin-left:50px}
.ml100{margin-left:100px}
.mr5{margin-right:5px}
.mr10{margin-right:10px}
.mr15{margin-right:15px}
.mr20{margin-right:20px}
.mr30{margin-right:30px}
.mr50{margin-right:50px}
.mr100{margin-right:100px}
```

## [CSS选择器][CSS Selector]

### 1. 组选择器

```css
h1, h2, h3, .class1{}
```

### 2. 派生(后代)选择器

```css
li{}
strong{}
li string{}
```

### 3. 子元素选择器

```css
h1 > strong {}
```

### 4. 相邻兄弟选择器

```css
h1 + p {}
```

## CSS 定位方式`position`

CSS定位方式分为四种`relative`，`absolute`，`fixed`，`static`。

每种方式考虑四点：

1. 定位的基准对象。

2. 找到基准对象后，从基准对象的什么位置计算元素的位置。

3. 对文档流或者其他元素的影响。 

4. z-index属性是否有用

### relative 定位

relative相对定位比较简单，

1. 偏移的基准是元素原来的位置，

2. 实际显示位置是基于元素**margin的左上侧**根据`top left width/right height/bottom`计算的新位置。

3. 元素实际上还占有原来的位置也不会对其他元素的位置造成影响，

4. 通过z-index设置所在的层.

### absolute 定位

绝对定位，

1. 定位的基准对象是元素的第一个设置了`position`属性且属性值是`relative`或`absolute`的父级对象，如果不存在这样的对象，那么基准对象是body。

2. 从基准对象的**padding左上角**根据`top left width/right height/bottom`计算的新位置。

**注**：设置absolute值的对象，必须指定`top left right bottom`属性中的一个，否则元素会进行默认方式的布局，即relative方式，占用文档空间。

3. 如果元素设置了绝对定位，元素将脱离文档流不占有parent中的文档空间(**那么在JS中是否可以使用parent或者child？**)，此时

4. 通过z-index设置所在的层.

### fixed 定位

以body为基准对象，相对于浏览器窗口进行定位。

通过z-index设置所在的层.

### static

默认值，按照正常的文档流进行布局。

**这几种定位方式如何应用？**


[CSS Selector]: http://www.w3school.com.cn/css/css_syntax_descendant_selector.asp
[css design pattern]: http://www.hicss.net/separation-of-powers-model-in-css-design-patterns/
