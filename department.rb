class Department
  attr_accessor :name, :employees
  def initialize(name)
    @employees = []
    @name = name
  end

  def add(employee)
    employee.department = @name
    @employees << employee
  end

  def salary
    salaries = 0
    @employees.each do |emp|
      salaries += emp.salary
    end
    return salaries
  end

  def department_raise(dollars)
    good_salary = 0
    good_employees = []
    @employees.each do |employee|
      if employee.good_employee
        good_salary += employee.salary
        good_employees << employee
      end
    end
    raise_amount = 100.0*dollars/good_salary
    good_employees.each do |employee|
      employee.raise_salary(raise_amount)
    end
  end

end
