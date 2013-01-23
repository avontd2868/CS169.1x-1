require File.dirname(__FILE__) + '/part4'

dessert = Dessert.new('Cake', 500)
puts dessert.name
puts dessert.calories
puts dessert.healthy?
puts dessert.delicious?

jb = JellyBean.new('Jelly Bean', 199, 'black licorice')
puts jb.name
puts jb.calories
puts jb.healthy?
puts jb.delicious?

jb2 = JellyBean.new('Jelly Bean 2', 200, 'Cherry')
puts jb2.name
puts jb2.calories
puts jb2.healthy?
puts jb2.delicious?