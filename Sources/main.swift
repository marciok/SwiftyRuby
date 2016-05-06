import CRuby
import Foundation

ruby_setup()
rb_require("./hello_world/hello.rb")
let argStr = rb_str_new_cstr("Citrous")
var array: Array<UnsafeMutablePointer<VALUE>> = [argStr]

var result = rb_funcallv(0, rb_intern("hello"), 1, argStr)
var str = rb_string_value_cstr(&(result))
let r = String(cString: str)
print(r)


ruby_cleanup(0)

