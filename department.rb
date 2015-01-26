require './employee.rb'


class Department
  def initialize (department_name)
    @total_salery = 0
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


  def get_total_salary
    temp_salary = 0
    @employee_array.each do |a|
    temp_salary += a.get_employee_salary
    end
    return temp_salary
  end

  def give_raise(raise_amount)
    @employee_array.each do |a|
      if a.get_performace == true

      end
    end

  end
p
end
