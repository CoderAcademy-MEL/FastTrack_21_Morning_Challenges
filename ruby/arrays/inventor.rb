class Inventor
  attr_reader :first, :last, :born, :passed

  def initialize(first, last, born, passed)
    @first = first
    @last = last
    @born = born
    @passed = passed
  end
end
