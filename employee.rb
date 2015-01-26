class Employee

  attr_reader :employee_name, :salary

  def initialize(employee_name, salary)
    @employee_name = employee_name
    @salary = salary
  end
end
