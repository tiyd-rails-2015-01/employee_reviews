# require './employee'

class Department
attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = []
    @employees = []
  end

  def add_employee(employee)
    @roster << employee
  end

  def total_salary
    total = 0
    @roster.each do |employee|
      total += employee.salary
    end
    return total
  end

  def department_raise(raise)
    satisfactory_salary = 0
    satisfactory_employee = []
    @employees.each do |emp|
      if emp.rated_satisfactory == true
        satisfactory_salary += emp.salary
        satisfactory_employee << emp
      end
    end
    total_salary = raise/satisfactory_salary
    satisfactory_employee.each do |emp|
      emp.raise_salary(total_salary)
    end
  end
end
