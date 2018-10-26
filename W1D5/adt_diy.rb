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
