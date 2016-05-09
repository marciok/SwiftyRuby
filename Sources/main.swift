import CRuby

ruby_setup()
rb_require("./hello_world/hello.rb") // Importing Ruby file

var stringArg = rb_str_new_cstr("Swift") // Creating new Ruby string
var result = rb_funcallv(0, rb_intern("hello"), 1, &(stringArg)) // Calling the function `hello` passing `stringArg`
var str = rb_string_value_cstr(&(result)) // Extracting the returned value as C string

print(String(cString: str))

ruby_cleanup(0)
