require './employee.rb'


class Department
  def initialize (department_name)
    @department_name = department_name
    @employee_array = []
  end

  def get_department_name
    return @department_name
  end

  def add_employee(employee)
    @employee_array << employee
  end

#  def output_employee_name
#  
#  end


  def total_department_salary

  end

end
