class Department
  attr_accessor :dept_name, :employees
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
    employee_salary.reduce(:+) #{|sum, salary| sum += salary}
  end

  def dept_raise
    satisfactory = []
    @employees.each do |employee|
      if employee.satisfactory
       satisfactory << employee
     end
   end
   raise_amt = 1000*satisfactory.length
   raise_amt + dept_salary
 end
end
