class Employee
  attr_accessor :name, :salary, :department, :review, :employee_raise, :satisfactory
  def initialize(name, salary)
    @salary=salary
    @name=name
    @department=Department.new(department)
    @review = nil
    @satisfactory = nil
  end

  def satisfactory?
    @satisfactory
  end

  def employee_raise(percent)
    @salary+= @salary * percent.to_f/100
  end

end
