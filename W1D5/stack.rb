class Stack
  attr_accessor :contents
  def initialize(contents = [])
   @contents = contents
  end

  def push(el)
   @contents.push(el)
  end

  def pop
   @contents.pop
  end

  def peek
   @contents[-1]
  end
end
