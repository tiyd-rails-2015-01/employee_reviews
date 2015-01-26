class Department
  attr_accessor :employees
  def initialize(name)
    @name = name
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def has_employee_with_name?(name)
    @employees.any? {|e| e.name == name}
  end

end
