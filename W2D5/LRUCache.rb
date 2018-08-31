class LRUCache
  def initialize(capacity)
    @capacity = capacity
    @store = []
  end

  def count
    # returns number of elements currently in cache
    @store.count
  end

  def add(el)
    # adds element to cache according to LRU principle
    @store.delete(el)
    @store << el
    @store.shift if @store.count > @capacity
  end

  def show
    # shows the items in the cache, with the LRU item first
    print @store
  end

  private
  # helper methods go here!

end

class LRUCache
  def initialize(capacity)
    @capacity = capacity
    @store = Hash.new{0}
  end

  def count
    # returns number of elements currently in cache
    @store.count
  end

  def add(el)
    # adds element to cache according to LRU principle
    @store.delete(el)
    @store[el]
    @store.delete(@store.each.first[0]) if @store.size > @capacity
  end

  def show
    # shows the items in the cache, with the LRU item first
    print @store
  end

  private
  # helper methods go here!

end
