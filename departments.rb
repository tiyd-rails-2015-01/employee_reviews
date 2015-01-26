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


end
