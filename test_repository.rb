require_relative 'task_repository'
require_relative 'task'

# Create the repository [instance]
repo = TaskRepository.new
p repo

# Add a task - must be a Task object!
walk_dog = Task.new('walk dog')
repo.add(walk_dog)

p repo

# Get all tasks
puts "All my tasks:"
repo.all.each { |task| puts task.name }

# Remove a task
repo.remove(0)

p repo
