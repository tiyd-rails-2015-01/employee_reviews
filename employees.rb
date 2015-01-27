class Employee
  attr_accessor :name, :department, :review, :satisfactory, :salary, :give_raise

  def initialize(name, salary)
    @name = name
    @salary = salary
    @department = nil
    @review = nil
    @satisfactory = true
  end

  def give_raise
    @salary + 1000
  end
end
