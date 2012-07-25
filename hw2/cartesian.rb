class CartesianProduct
  include Enumerable
  # your code here
  attr_accessor :a, :b
  def initialize(var1, var2)
    @a = var1
    @b = var2
  end

  def each
    @a.each do |x|
      @b.each do |y|
        yield [x, y]
      end
    end
  end
end