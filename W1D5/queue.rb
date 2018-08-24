class Queue
  attr_accessor :contents
  def initialize(contents = [])
    @contents = contents
  end

  def enqueue(el)
    @contents.push(el)
  end

  def dequeue
    @contents.shift
  end

  def peek
    @contents[0]
  end
end
