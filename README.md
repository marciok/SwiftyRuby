# SwiftyRuby 💎🐦

A proof of concept, on how to call **Ruby** from **Swift**, using [CRuby](https://github.com/marciok/CRuby) package. 

---
[main.swift](https://github.com/marciok/SwiftyRuby/blob/master/Sources/main.swift)
```Swift
import CRuby

ruby_setup()
rb_require("./hello_world/hello.rb") // Importing Ruby file

var stringArg = rb_str_new_cstr("Swift") // Creating new Ruby string
var result = rb_funcallv(0, rb_intern("hello"), 1, &(stringArg)) // Calling the function `hello` passing `stringArg`
var str = rb_string_value_cstr(&(result)) // Extracting the returned value as C string

print(String(cString: str))

ruby_cleanup(0)
```
---

[hello.rb](https://github.com/marciok/SwiftyRuby/blob/master/hello_world/hello.rb)

```Ruby
def hello name
  "Hello #{name} from Ruby!"
end
```

---

*Special thanks to [@neonacho](https://twitter.com/NeoNacho), who gave me some enlightenment*

