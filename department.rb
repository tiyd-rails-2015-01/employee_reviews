require './employee.rb'


class Department

  def initialize(department_name)
    @department_name = department_name
    @employees = []
  end

  def department_name
    @department_name
  end

  def add_employee(employee)
    @employees << employee
  end

  def employees
    @employees
  end

  def payroll
    total = 0
    @employees.each do |employee|
      total += employee.salary
    end
    return total
  end



  # def hr
  #   assert HR
  # end
  #
  # def accounting
  #   assert Accounting
  # end
  #




end

# gardening = Department.new('gardening')
# gardening.department_name
