class Router
  # State
  # - controller
  # Behaviour
  # - run!
  # - show menu to user
  # - get user choice
  # - dispatch action (send to controller)

  def initialize(tasks_controller)
    @tasks_controller = tasks_controller
  end

  def run
    loop do
      display_menu
      action = get_user_choice
      dispatch(action)
    end
  end

  def display_menu
    puts "\n"
    puts "~~~ Welcome to your task manager ~~~"
    puts "1. List all tasks"
    puts "2. Add a new task"
    puts "3. Mark a task as done"
    puts "4. Remove a task"
  end

  def get_user_choice
    puts "Please enter your choice"
    gets.chomp.to_i
  end

  def dispatch(action)
    case action
    when 1 then @tasks_controller.list
    when 2 then @tasks_controller.add_task
    when 3 then @tasks_controller.mark_task_as_done
    when 4 then @tasks_controller.remove_task
    else puts "Not a valid option"
    end
  end
end
