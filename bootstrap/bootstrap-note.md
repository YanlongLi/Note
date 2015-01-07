
# Bootstrap Note

## Tooltip

[how to use at tutorialspoint][tutorialspoint bootstrap tooltip]

### Show a bootstrap tooltip with an SVG object

[link][tooltip with svg]

> The reason is because by default it inserts the dynamically generated tooltip div in the svg which makes browser not to render it.
Instead use the container property in the options to set the container where the boostrap generated div needs to be placed.
See an ex below:

```javascript
$('.firststar').tooltip({title:'sometitle', container:'body'});
```

> Container can be any non svg element container. say in your case .well so you would write it as

```javascript
$('.firststar').tooltip({title:'sometitle', container:'.well'});
```


[tutorialspoint bootstrap tooltip]: http://www.tutorialspoint.com/bootstrap/bootstrap_tooltip_plugin.htm
[tooltip with svg]: http://stackoverflow.com/questions/14697232/how-do-i-show-a-bootstrap-tooltip-with-an-svg-object
