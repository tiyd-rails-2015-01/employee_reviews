class Employee
  attr_accessor :name, :salary, :review, :satisfactory

  def initialize(name, salary)
    @name = name
    @salary = salary
  end

  def give_raise(percent)
    @salary = (percent * @salary) + @salary 
  end
end
