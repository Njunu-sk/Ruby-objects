class Fibonacci
    def calculate(num)
        return 1 if num < 3
        run_fibonacci_calculation(num)
    end

    private
    def run_fibonacci_calculation(num)
      @run_fibonacci_calculation ||= {}
      @run_fibonacci_calculation[num] ||= calculate(num - 1) + calculate(num - 2)
      @run_fibonacci_calculation[num]
    end
end
<<-DOC
fibonacci = Fibonacci.new
puts fibonacci.calculate(40)
DOC