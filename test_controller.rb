require_relative 'task_repository'
require_relative 'tasks_controller'
require_relative 'task'

repo = TaskRepository.new
walk_dog = Task.new('walk dog')
repo.add(walk_dog)

controller = TasksController.new(repo)

controller.list

# puts '# adding a task'
# controller.add_task
# controller.list

# puts '# removing a task'
# controller.remove_task
# controller.list

puts '# marking as done'
controller.mark_task_as_done
controller.list
