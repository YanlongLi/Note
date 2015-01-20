
# Other Node

## [Jinja][jinja]

> Jinja2 is a modern and designer-friendly templating language for Python, modelled after Django’s templates. It is fast, widely used and secure with the optional sandboxed template execution environment

### Features

- sandboxed execution
- powerful automatic HTML escaping system for XSS prevention
- template inheritance
- compiles down to the optimal python code just in time
- optional ahead-of-time template compilation
- easy to debug. Line numbers of exceptions directly point to the correct line in the template.
- configurable syntax

### Variable

```
{{ foo.bar }}
{{ foo['bar'] }}
```

### Filters

[Buildin Filters][jinja2 buildin filters]

### Tests

```
{% if loop.index is divisibleby 3 %}
{% if loop.index is divisibleby(3) %}
```

[Buildin Tests][jinja2 buildin tests]

### Comments

```
{##}
```
### Whitespace Control

[WhiteSpace Control][jinja2 whitespace control]

### Escaping

```
{% raw %}
{% endraw %}
```

### Template Inheritance

```
{% extends "base.html" %}
{{ super() }}
{{ self.title() }}
```

### Block Nesting and Scoped Block

```
{% for item in seq %}
    <li>{% block loop_item scoped %}{{ item }}{% endblock %}</li>
{% endfor %}
```

### Control Structure

[Control Structure][jinja2 control structure]

### Macros and Call

[Macros][jinja2 macro]

```
{% macro input(name, value='', type='text', size=20) -%}
    <input type="{{ type }}" name="{{ name }}" value="{{
        value|e }}" size="{{ size }}">
{%- endmacro %}

<p>{{ input('username') }}</p>
<p>{{ input('password', type='password') }}</p>
```

[Call][jinja2 call]

```
{% macro render_dialog(title, class='dialog') -%}
    <div class="{{ class }}">
        <h2>{{ title }}</h2>
        <div class="contents">
            {{ caller() }}
        </div>
    </div>
{%- endmacro %}

{% call render_dialog('Hello World') %}
    This is a simple dialog rendered by using a macro and
    a call block.
{% endcall %}
```

### Filter Block

```
{% filter upper %}
    This text becomes uppercase
{% endfilter %}
```

### Assignment

```
{% set navigation = [('index.html', 'Index'), ('about.html', 'About')] %}
{% set key, value = call_something() %}
```

block assignment

```
{% set navigation %}
    <li><a href="/">Index</a>
    <li><a href="/downloads">Downloads</a>
{% endset %}
```

The navigation variable then contains the navigation HTML source.

### Include 

```
{% include 'header.html' %}
    Body
{% include 'footer.html' %}

{% include "sidebar.html" ignore missing %}
{% include "sidebar.html" ignore missing with context %}
{% include "sidebar.html" ignore missing without context %}

```

The first template that exists will be included

```
{% include ['page_detailed.html', 'page.html'] %}
{% include ['special_sidebar.html', 'sidebar.html'] ignore missing %}
```

### Import

[Import][jinja2 import]

**Per default included templates are passed the current context and imported templates not**

```
{% from 'forms.html' import input with context %}
{% include 'header.html' without context %}
```

#### Literals

- string
- number
- array
- tuple
- dict

#### Math

```
+ - * ** / // %
{{ '=' * 8 }}
```

#### Logic

and or not (expr)

#### Other operator

- `~`: Converts all operands into strings and concatenates them

#### if expression

```
{% extends layout_template if layout_template is defined else 'master.html' %}
```

### [List of Buildin Filters][jinja2 buildin filters]

```
+-----------------------------------------------------------------+------------------------------------------------------------------+
| batch(value, linecount, fill_with=None)                         | capitalize(s)                                                    |
+-----------------------------------------------------------------+------------------------------------------------------------------+
| center(value, width=80)                                         | default(value, default_value=u'', boolean=False)                 |
+-----------------------------------------------------------------+------------------------------------------------------------------+
| dictsort(value, case_sensitive=False, by='key')                 | escape(s)                                                        |
+-----------------------------------------------------------------+------------------------------------------------------------------+
| filesizeformat(value, binary=False)                             | first(seq)                                                       |
+-----------------------------------------------------------------+------------------------------------------------------------------+
| float(value, default=0.0)                                       | forceescape(value)                                               |
+-----------------------------------------------------------------+------------------------------------------------------------------+
| format(value, *args, **kwargs)                                  | groupby(value, attribute)                                        |
+-----------------------------------------------------------------+------------------------------------------------------------------+
| indent(s, width=4, indentfirst=False)                           | int(value, default=0)                                            |
+-----------------------------------------------------------------+------------------------------------------------------------------+
| join(value, d=u'', attribute=None)                              | last(seq)                                                        |
+-----------------------------------------------------------------+------------------------------------------------------------------+
| length(object)                                                  | list(value)                                                      |
+-----------------------------------------------------------------+------------------------------------------------------------------+
| lower(s)                                                        | map()                                                            |
+-----------------------------------------------------------------+------------------------------------------------------------------+
| pprint(value, verbose=False)                                    | random(seq)                                                      |
+-----------------------------------------------------------------+------------------------------------------------------------------+
| reject()                                                        | rejectattr()                                                     |
+-----------------------------------------------------------------+------------------------------------------------------------------+
| replace(s, old, new, count=None)                                | reverse(value)                                                   |
+-----------------------------------------------------------------+------------------------------------------------------------------+
| round(value, precision=0, method='common')                      | safe(value)                                                      |
+-----------------------------------------------------------------+------------------------------------------------------------------+
| select()                                                        | selectattr()                                                     |
+-----------------------------------------------------------------+------------------------------------------------------------------+
| slice(value, slices, fill_with=None)                            | sort(value, reverse=False, case_sensitive=False, attribute=None) |
+-----------------------------------------------------------------+------------------------------------------------------------------+
| string(object)                                                  | striptags(value)                                                 |
+-----------------------------------------------------------------+------------------------------------------------------------------+
| sum(iterable, attribute=None, start=0)                          | title(s)                                                         |
+-----------------------------------------------------------------+------------------------------------------------------------------+
| trim(value)                                                     | truncate(s, length=255, killwords=False, end='...')              |
+-----------------------------------------------------------------+------------------------------------------------------------------+
| upper(s)                                                        | urlencode(value)                                                 |
+-----------------------------------------------------------------+------------------------------------------------------------------+
| urlize(value, trim_url_limit=None, nofollow=False, target=None) | wordcount(s)                                                     |
+-----------------------------------------------------------------+------------------------------------------------------------------+
| wordwrap(s, width=79, break_long_words=True, wrapstring=None)   | xmlattr(d, autospace=True)                                       |
+-----------------------------------------------------------------+------------------------------------------------------------------+
```

### [List of Buildin Tests][jinja2 buildin tests]

```
+----------------------+-----------------+-------------------------+-----------------------+
| callable(object)     | defined(value)  | divisibleby(value, num) | equalto(value, other) |
+----------------------+-----------------+-------------------------+-----------------------+
| escaped(value)       | even(value)     | iterable(value)         | lower(value)          |
+----------------------+-----------------+-------------------------+-----------------------+
| mapping(value)       | none(value)     | number(value)           | odd(value)            |
+----------------------+-----------------+-------------------------+-----------------------+
| sameas(value, other) | sequence(value) | string(value)           | undefined(value)      |
+----------------------+-----------------+-------------------------+-----------------------+
| upper(value)         |                 |                         |                       |
+----------------------+-----------------+-------------------------+-----------------------+
```

### [List of Global Functions][jinja2 global functions]

```
+------------------------------+-----------------------------------------+---------------+
| range([start, ]stop[, step]) | lipsum(n=5, html=True, min=20, max=100) | dict(**items) |
+------------------------------+-----------------------------------------+---------------+
| class cycler(*items)         | restet()  next() current                |               |
+------------------------------+-----------------------------------------+---------------+
| class joiner(sep=', ')       |                                         |               |
+------------------------------+-----------------------------------------+---------------+
```

[jinja]: http://jinja.pocoo.org/docs/dev/
[jinja2 buildin filters]: http://jinja.pocoo.org/docs/dev/templates/#builtin-filters
[jinja2 buildin tests]: http://jinja.pocoo.org/docs/dev/templates/#builtin-tests
[jinja2 global functions]: http://jinja.pocoo.org/docs/dev/templates/#list-of-global-functions
[jinja2 whitespace control]: http://jinja.pocoo.org/docs/dev/templates/#whitespace-control
[jinja2 control structure]: http://jinja.pocoo.org/docs/dev/templates/#list-of-control-structures
[jinja2 macros]: http://jinja.pocoo.org/docs/dev/templates/#macros
[jinja2 call]: http://jinja.pocoo.org/docs/dev/templates/#call
[jinja2 import]: http://jinja.pocoo.org/docs/dev/templates/#import

## [Jade][jade reference]


[jade reference]: http://jade-lang.com/reference/

