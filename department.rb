class Department
  attr_reader :department_name
  def initialize(department_name)
    @department_name=department_name
    @employees=[]

  end

  def add(employee)
    employee.department = @department_name
    @employees << employee
  end

  def total_salary
    employee_salaries=[]
    @employees.each{ | employee| employee_salaries << employee.salary}
    employee_salaries.reduce {|sum, salary| sum +=salary}
  end

  def department_raise(amount)
    @amount=amount
    total_salary += amount
  end



end
