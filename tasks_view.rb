class TasksView
  # State
  # - none
  # Behaviour
  # - list some tasks
  # - get new task name
  # - get task index

  def display(tasks)
    puts "===== Your tasks ====="
    tasks.each_with_index do |task, index|
      done = task.done? ? 'X' : ' '
      puts "#{index + 1}. [#{done}] #{task.name}"
    end
  end

  def ask_user_for_task_name
    puts "Please enter the task name:"
    gets.chomp
  end

  def ask_user_for_task_index
    puts "Please enter the task number:"
    gets.chomp.to_i - 1
  end
end
