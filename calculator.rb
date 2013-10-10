# Simple RPN Calculator
class CalculatorEngine

  attr_accessor :memory

  def initialize
    @memory = []
  end

  def clear_memory
    self.memory = []
  end

  def push_into_memory(v)
    memory.push(v)
  end

  def pull_from_memory
    memory.pop
  end

  def last_entry_in_memory
    memory.last
  end

  def print_memory
    memory.each_with_index do |memory, index|
      print_message "\t#{index}: #{memory}"
    end
  end

  def print_message(message)
    puts message
  end

  def get_input
    print "> "
    input = gets
    input.chomp
  end

  def add_operation
   if memory.length >= 2
      op1 = pull_from_memory
      op2 = pull_from_memory
      push_into_memory(op1 + op2)
      print_message "= #{last_entry_in_memory}"
    else
      print_message "Error: Not Enough Operands"
    end
  end

  def run
    while true do
      input = get_input
      case input
      when 'q'
        exit
      #when '0','1','2','3','4','5','6','7','8','9'
      when /\d/
        push_into_memory input.to_f
        print_message last_entry_in_memory
      when 'c'
        clear_memory
        print_message "Memory Cleared"
      when 'm'
        print_memory
      when '+'
        add_operation
      else
        print_message "Error: Unsupported Operator: #{input}" unless input.empty?
      end
    end
  end
end

engine = CalculatorEngine.new
engine.run
