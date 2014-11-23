


## JavaScript


### 理解this作用域和closure
![学习Javascript闭包（Closure）][js closure]
可以通过对象的形式返回多个闭包:
```
var foo = ( function() {
	var secret = 'secret';
	// “闭包”内的函数可以访问 secret 变量，而 secret 变量对于外部却是隐藏的
	return {
		get_secret: function () {
			// 通过定义的接口来访问 secret
			return secret;
		},
		new_secret: function ( new_secret ) {
			// 通过定义的接口来修改 secret
			secret = new_secret;
		}
	};
} () );
```
![this 作用域](_img/js_this_.png)

如下两段代码:
代码1
```
var name = "The Window";

var object = {
  name : "My Object",
  getNameFunc : function(){
    return function(){
      return this.name;
    };
  }
};

var a = {
  name: "hah",
  cc: object.getNameFunc()
};

console.log(object.getNameFunc()());
console.log(a.cc());
```
代码2
```
var name = "The Window";
　var object = {
　　name : "My Object",
　　getNameFunc : function(){
　　　var that = this;
　　　return function(){
　　　　return that.name;
　　　};
　　}
};

console.log(object.getNameFunc()()); 
```

### 把一个`{children:[,,,]}`数组转换成一个`{source:,target}`数组
```JavaScirpt
function d3_layout_hierarchyLinks(nodes) {
	return d3.merge(nodes.map(function(parent) {
		return (parent.children || []).map(function(child) {
			return {source: parent, target: child};
	});
}));
```


[js closure]: http://www.ruanyifeng.com/blog/2009/08/learning_javascript_closures.html
