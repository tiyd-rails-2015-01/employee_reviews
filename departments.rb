class Department
  attr_accessor :dept_name
  def initialize(dept_name)
    @dept_name = dept_name
    @employees = []
  end

  def add(employee)
    employee.department = @dept_name
    @employees << employee
  end

  def dept_salary
    employee_salary = []
    @employees.each {|employee| employee_salary << employee.salary}
    employee_salary.reduce {|sum, salary| sum += salary}
  end
end
