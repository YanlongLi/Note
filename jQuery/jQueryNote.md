# jQuery Learning Note

学习编程重要的不是语言的语法如何，重要的是这种语言有什么特性，以及如何利用语言的特性实现特定的功能。
尤其是在这种语言之下常用的技巧和常规的使用方法，理解功能怎么用，为什么这么用。
写程序的过程是把功能翻译成逻辑的过程，所以首先要对所要实现的功能熟悉，再次逻辑要清晰，
模块划分要合理，不同部分的连结也要设计合理。

jQuery是一套成熟的js框架。

jQuery宗旨: 

> Write Less, Do More.

学习jQuery需要学习jQuery这几方面的功能：

1. 选择器
2. 操作DOM
3. 事件处理
4. 动画特效
5. Ajax
6. 常用插件

## jQuery 选择器

学习选择器，需要知道选择器如何使用，在什么情况下使用，不同的选择器能够实现什么功能。
同时还要注意选择器返回的是集合还是单个元素。

### 什么是选择器

简单来说就是用来选择DOM元素的方式方法。

### 选择器的种类

选择器分类示意图如下：[jquery selector referrence][]

![jQuery Selector](_img/jquery_selector_.png)

#### 1. 基本选择器

![jQuery Basics Selector](_img/jquery_basic_selector_.png)

#### 2. 层次选择器

层次选择器通过DOM元素间的层次关系获取元素，主要包括后代、父子、相邻、兄弟关系，
如下

![Level Selector](_img/jquery_level_selector_.png)

__使用__：可以动态的改变DOM的层次结构，动态更新DOM节点的显示情况。

#### 3. 基本过滤选择器

根据指定的规则匹配相应的元素。

![Basic Filter Selector](_img/jquery_basic_filter_selector_.png)

__使用__：过滤作用，选择特定的的元素，比如选择含有指定类的元素，不含有指定类的元素，
具有特定条件的index值的元素，奇数/偶数行等。

#### 4. 内容过滤选择器

根据元素中的文字内容或子元素特征进行匹配。

![Content Filter Selector](_img/jquery_content_filter_selector_.png) 

#### 5. 可见性过滤选择器

根据元素的可见性过滤

![Visibility Filter Selector](_img/jquery_visibility_filter_selector_.png)

#### 6. 属性过滤选择器

根据元素的属性获取元素，如ID或匹配属性值的内容，以`[`开始`]`结束。

![Attribute Filter Selector](_img/jquery_attribute_filter_selector_.png)

#### 7. 子元素过滤选择器

![Child Filter Selector](_img/jquery_child_filter_selector_.png)

#### 8. 表单过滤选择器

表单过滤选择器通过表单中对象的属性特征获取元素，比如enabled、disabled、checked、selected。

![Form Filter Selector](_img/jquery_form_filter_selector_.png)

#### 9. 表单选择器

用于快速定位某表单对象，进行数据的提交或处理。

![Form Selector](_img/jquery_form_selector_.png)

### 小结

本章介绍了jQuery中不同的选择器和过滤器，选择器和过滤器结合使用可以很方便的选择DOM中的元素进行操作。

_基本选择器_包括ID选择器，类选择器，标签选择器，匹配所有，以及混合选择。  
_层次选择器_根据层次信息选择元素，包括根据祖先后代关系选择，根据父子关系选择，根据相邻关系选择，根据兄弟关系选择。  
_表单选择器_根据表单元素进行选择，对此首先要熟悉都有哪些种类的表单元素，这些表单元素都有哪些各自特有的属性，这样才能更好的操作表单。  

过滤器跟选择器混合使用，当用选择器选中元素集合后，通过附加的过滤器选择其中的一个子集进行操作。  
_基本过滤器_根据指定的规则过滤元素，这些规则包括对元素index的限定过滤，类型过滤(:header, :animated)，差集过滤(:not(selector))。  
_内容过滤器_根据元素的内容或子元素特征进行过滤。包括直接内容过滤(:contains())，空元素过滤(:empty)，非叶子节点过滤(:parent)，
交集过滤(:has())。  
_可见性过滤器_通过元素的可见性进行过滤，这类过滤器的使用频率比较高，主要用在动态切换元素的情况。  
_属性过滤器_通过元素的属性进行过滤，主要用于对属性值的限定，应用也比较广泛，比如用户可以根据某种规则给元素添加类名称或ID，
那么反过来就可以根据规则通过属性过滤器选择选择对应的元素。
_子元素过滤器_通过元素在其父元素中的位置关系进行过滤，直接选择的是子元素，然后看子元素的位置进行过滤，功能根基本过滤器类似。  
_表单过滤器_根据表单元素的属性特征过滤元素。因此要对不同表单的特点和各自特有属性比较熟悉。

[jquery selector referrence]: http://www.w3schools.com/jquery/jquery_ref_selectors.asp


## jQuery 操作DOM

jQuery对DOM的操作主要包括以下几类：  
_访问元素_， _创建节点-插入节点_， _复制节点_， _删除节点_， _替换节点_， _包裹节点_，以及 _遍历节点_，

#### 访问元素

访问元素的目的一般是为了操作元素，更改其属性、内容、样式等。

获取/设置_元素属性_的通用方式是`attr(key,[value])`，`attr(key,function(index))`。用函数来指定的属性值的方式使得可以动态的更改属性值。

获取/设置_元素内容_的方式有`html()`和`text()`，这两个函数的区别在于一个操作的是html内容，一个操作的是文本内容。
而且`html()`只支持XHTML文档，不支持XML文档。

获取/设置_元素值_的方式`val()`，**这个方法常用于表单中获取或设置对象的值**。比如获取文本框的值，获取select标记的值等等。
val()函数的返回值和参数可以是数组，比如`$(:radio).val(["radio2","radio3"])`，代表选中ID为radio2和radio3的单选框。

操作元素的_样式_，通过`css(name, value)`给元素指定样式，通过`addClass(class)`给元素增加样式类，通过`toggleClass()`切换样式类，
通过`removeClass(class)`删除样式类。  
**问题:在什么情况下使用样式类，在什么情况下直接操作样式，有没有一个既定的规则可以遵循?**

