class Employee
  attr_reader :name
  attr_reader :salary
  attr_accessor :review
  attr_accessor :is_satisfactory

  def initialize(name, salary)
    @name = name
    @salary = salary

  end

  def raise_salary(amount)
    @salary = @salary + amount
  end


end
