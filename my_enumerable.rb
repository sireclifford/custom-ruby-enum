module MyEnumerable
  # implement #all? and #any? methods
  def all?
    each { |i| return false unless yield i }
    true
  end
  def any?
    each { |i| return true if yield i }
    false
  end
  # implement #filter method
  def filter
    result = []
    each { |i| result << i if yield i }
    result
  end
end

