require_relative "my_enumerable"
class MyList
  include MyEnumerable
  @list = []
  def initialize(param_list)
    @list = param_list
  end
  def each(&block)
    @list.each(&block)
  end
end
# Test #all?
list = MyList.new([1, 2, 3, 4])
puts(list.all? { |i| i < 5 }) # true
puts(list.all? { |e| e > 5 }) # false
# Test #any?
puts(list.any? { |e| e == 2 }) # true
puts(list.any? { |e| e == 5 }) # false
# Test #filter
puts(list.filter(&:even?)) # [2, 4]