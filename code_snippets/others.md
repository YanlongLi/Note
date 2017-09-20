
## HTML

### no cache

[link](http://cristian.sulea.net/knowledge-base/html/disable-browser-caching-with-meta-html-tags)

```
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
```

### [HTML Meta Tags](http://www.i18nguy.com/markup/metatags.html)

## Mongo

### update value using old value

```
db.events.find().snapshot().forEach(
  function (e) {
    // update document, using its own properties
    e.coords = { lat: e.lat, lon: e.lon };

    // remove old properties
    delete e.lat;
    delete e.lon;

    // save the updated document
    db.events.save(e);
  }
)
```
### [Field Update Operator](http://docs.mongodb.org/manual/reference/operator/update-field/)

