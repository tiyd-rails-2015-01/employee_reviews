class Employee
  attr_reader :name, :salary, :reviews
  def initialize(name, salary)
    @name = name
    @salary = salary
    @reviews = []
  end

  def employee_review(review)
    @reviews << review
  end




end
