class Queue
  def initialize
    @items = []
  end

  def enqueue(item)
    @items << item
  end

  def dequeue
    @items.delete_at(0)
  end
end
