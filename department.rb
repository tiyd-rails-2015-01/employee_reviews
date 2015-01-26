class Department
  attr_reader :dep_name, :dep_employees
  def initialize(dep_name)
    @dep_name = dep_name
    @dep_employees = []
  end

  def add(employee)
    employee.department = @dep_name
    @dep_employees << employee
  end
end
