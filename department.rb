require './employee'

class Department

  def initialize(department_name)
    @department_name = department_name
    @employees = []
  end

  def add_employee(name)
    @employees << name
  end

  def employee_names
    employees = []
    @employees.each do |name|
      employees << name.name
    end
    employees
  end

  def name
    @department_name
  end

  def total_salary
    sum = 0
    total_salary = @employees.each do |add|
      sum += add.salary.to_i
    end
    sum = sum.to_s
  end


end
