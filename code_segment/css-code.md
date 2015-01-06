
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


[CSS Selector]: http://www.w3school.com.cn/css/css_syntax_descendant_selector.asp
[css design pattern]: http://www.hicss.net/separation-of-powers-model-in-css-design-patterns/
