class Task
  attr_reader :name

  def initialize(name)
    @name = name
    @done = false
  end

  def mark_as_done!
    @done = true
  end

  def done?
    @done
  end
end

# buy_milk = Task.new('buy milk')
# buy_milk.mark_as_done!


# if buy_milk.done?
#   puts "#{buy_milk.name} is done!"
# end
