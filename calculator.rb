#
# Simple RPN Calculator
#

class CalculatorEngine

  def initialize
    @memory = []  
  end


  def run
    done = false

    while not done do
      print "> "
      input = gets
      
      if input
        input = input.chomp

        if input == 'q'
          done = true
        else
          # operators will work on the stack, numbers will be added to stack
          case input
          when '0','1','2','3','4','5','6','7','8','9'    
          	# ['0','1'].include?, %w(0 1).include?
            @memory.push(input.to_f)
            puts @memory.last
          when 'c'
            @memory = []
            puts "Memory Cleared"
          when 'm'
            puts "Memory:"
            position = 0
            @memory.each do |m|
              puts "\t#{position}: #{m}"
              position = position + 1
            end
          when '+'
            if @memory.length >= 2
              op1 = @memory.pop
              op2 = @memory.pop
              @memory.push(op1 + op2)
              puts "= #{@memory.last}"
            else
              puts "Error: Not Enough Operands"
            end
          else
            puts "Error: Unsupported Operator: #{input}" unless input.empty?
          end

        end

      else
        done = true
      end

    end
  end

end

engine = CalculatorEngine.new
engine.run


# http://ruby-doc.org/