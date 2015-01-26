class Department
  attr_reader :dep_name, :dep_employees, :salary
  def initialize(dep_name)
    @dep_name = dep_name
    @dep_employees = []
  end

  def add(employee)
    employee.department = @dep_name
    @dep_employees << employee
  end

  def salary
    total_salary = []
    @dep_employees.each do |s|
      total_salary << s.salary
    end
    total_salary.reduce(:+) #{|sum, salary| sum += salary}
  end
end
