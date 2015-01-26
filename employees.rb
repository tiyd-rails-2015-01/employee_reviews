class Employee
  attr_accessor :salary, :name, :department, :review, :give_raise

  def initialize(name, salary)
    @name = name
    @salary = salary
    @department = department
    @review = nil
    @satisfactory = nil
  end

  def give_raise
    @salary + 1000
  end

  def satisfactory?
    @satisfactory
  end


end
