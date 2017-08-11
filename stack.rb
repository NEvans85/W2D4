class MyStack

  def initialize
    @store = []
    @max = nil
    @next_max = nil
  end

  def pop
    @store.pop
  end

  def push(val)
    @store << val
    if val > @max
      @next_max = @max.dup
      @max = val.dup
    elsif val > @next_max
      @next_max = val.dup
    end
  end

  def peek
    @store
  end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end
end
