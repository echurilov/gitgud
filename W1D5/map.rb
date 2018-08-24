class Map
  attr_accessor :contents
  def initialize(contents = [])
    @contents = contents
  end

  def set(key, value)
    if @contents.none? {|pair| pair[0] == key}
      @contents << [key,value]
    else
      @contents.map {|pair| pair[1] = value if pair[0] == key}
    end
  end

  def get(key)
    @contents.each {|pair| return pair[1] if pair[0] == key}
  end

  def delete(key)
    @contents.reject {|pair| pair[0] == key}
  end

  def show
    @contents.select {|pair| pair[0] == key}
  end
end
