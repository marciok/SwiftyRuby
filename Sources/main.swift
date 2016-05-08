import CRuby
import Foundation

ruby_setup()
rb_require("./hello_world/hello.rb")

var stringArg = rb_str_new_cstr("Swift")
var result = rb_funcallv(0, rb_intern("hello"), 1, &(stringArg))
var str = rb_string_value_cstr(&(result))

print(String(cString: str))


ruby_cleanup(0)

