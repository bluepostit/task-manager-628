require_relative 'tasks_view'
require_relative 'task'

class TasksController
  # State
  # - repository
  # - view
  # Behaviour
  # - list all tasks
  # - add a task
  # - remove a task
  # - mark a task as done

  def initialize(task_repository)
    @task_repository = task_repository
    @tasks_view = TasksView.new
  end

  def list
    # get all tasks from the repo
    # send to the view to display to user
    tasks = @task_repository.all
    @tasks_view.display(tasks)
  end

  def add_task
    # ask user for name of task
    # create a Task object with that name!
    # add task to repo
    name = @tasks_view.ask_user_for_task_name
    task = Task.new(name)
    @task_repository.add(task)
  end

  def remove_task
    # get all tasks from repo
    # display them in the view
    # get index from user
    # tell repo to remove it
    list
    index = @tasks_view.ask_user_for_task_index
    @task_repository.remove(index)
  end

  def mark_task_as_done
    # list all tasks
    # get index from user
    # get Task object from repo, using index!
    # mark the Task object as done.
    list
    index = @tasks_view.ask_user_for_task_index
    task = @task_repository.task(index)
    task.mark_as_done!
  end
end
