class Department
  def initialize(name, employees = nil)
    @name = name
    if employees == !nil
      @employees = employees
    else
      @employees = []
    end
  end

  def add_employee(employee)
    @employees << employee
  end

end
