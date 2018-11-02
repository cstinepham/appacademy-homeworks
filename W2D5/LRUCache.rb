class LRUCache
  def initialize(size)
    @store = []
    @size = size
  end

  def count
    @store.length
  end

  def add(el)
    if @store.include?(el)
      @store.delete(el)
    elsif count >= @size
      @store.shift
    else
    @store[el] << el
  end

  def show
    p @cache
  end

end
