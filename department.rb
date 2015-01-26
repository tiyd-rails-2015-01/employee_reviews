class Department
  attr_reader :dept_name

  def initialize(dept_name)
    @dept_name = dept_name
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def employees
    @employees
  end

end
