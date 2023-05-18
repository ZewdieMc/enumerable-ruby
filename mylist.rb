require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize(list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new([1, 2, 3, 4])
puts(list.all?(&:positive?))
puts(list.any?(&:negative?))
puts(list.filter { |item| item > 2 })
