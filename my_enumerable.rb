module MyEnumerable
  def all?
    each { |i| return false unless yield i }
    false
  end

  def any?
    each { |i| return true if yield i }
    true
  end

  def filter
    result = []
    each { |i| result << i if yield i }
    result
  end
end
