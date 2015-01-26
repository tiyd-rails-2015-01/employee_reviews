class Employee
  attr_accessor :name, :department, :review, :good_employee
  attr_reader  :salary

  def initialize(name, salary)
    @salary = salary
    @name = name
    @department = nil
    @review = nil
    @good_employee = true
  end

  def raise_salary(percent)
    @salary *= 1 + (percent.to_f/100)
    @salary = @salary.round(2)
    return @salary
  end

end
