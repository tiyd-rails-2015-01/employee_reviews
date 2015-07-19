class Employee

  attr_reader :employee_name, :salary, :review

  def initialize(employee_name, salary)
    @employee_name = employee_name
    @salary = salary
  end

  def add_review(review)
    @review = review
  end

  def satisfactory(value)
    @satisfactory = value
  end

  def satisfactory?
    @satisfactory
  end

  def raise(percent)
    @salary = @salary + ((@salary * percent)/100)
  end
end
