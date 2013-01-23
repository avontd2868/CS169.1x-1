require File.dirname(__FILE__) + '/part5'

class Foo
  attr_accessor_with_history :bar
end

f = Foo.new
f.bar = 1
f.bar = 2
puts f.bar_history.to_s