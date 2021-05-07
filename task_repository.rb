class TaskRepository
  # State
  #  - collection of tasks (array)
  # Behaviour
  #  - add a task
  #  - remove a task
  #  - get all tasks
  #  - get an individual task

  def initialize
    # an array of Task objects
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def remove(index)
    @tasks.delete_at(index)
  end

  def task(index)
    @tasks[index]
  end
end
