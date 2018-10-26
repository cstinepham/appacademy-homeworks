class Stack
  def initialize
    @stack_arr = []
  end

  def push(el)
    @stack_arr << el
  end

  def pop
    @stack_arr.pop
  end

  def peek
    @stack_arr.last
  end

end

class Queue
  def initialize
    @queue_arr = []
  end

  def enqueue(el)
    @queue_arr << el
  end

  def dequeue
    @queue_arr.shift
  end

  def peek
    @queue_arr.first
  end

end

#set(key, value), get(key), delete(key), show

class Map
  def initialize
    @map_arr = Array.new

  end

  def set(key, value)
    keys = []
    @map_arr.each{|pair| keys << pair.first}
    if keys.include?(key)
      @map_arr.map do |pair|
        pair.first == key ? pair = [key, value] : pair
      end
    else
      @map_arr << [key, value]
    end
  end

  def get(key)
    @map_arr.each{|pair| return pair.last if pair.first == key}
  end

  def delete(key)
    @map_arr.reject{|pair| pair.first == key}
    key
  end

  def show
    @map_arr
  end

end
