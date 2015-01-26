class Employee
  attr_reader :name, :salary, :review
  def initialize(name, salary)
    @name = name
    @salary = salary
  end

  def add_review(text)
    @review = text
  end
end
