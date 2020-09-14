class Question

  attr_reader :value1, :value2, :sum

  def initialize
    @value1 = rand(1..10)
    @value2 = rand(1..10)
    @sum = @value1 + @value2
  end

end