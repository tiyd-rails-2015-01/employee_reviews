class Employee
  attr_accessor :salary, :name, :department

  def initialize(name, salary, review = nil)
    @name = name
    @salary = salary
    @department = department
    @review = review
  end

  def review
    @name.review = [""]
  end
end
