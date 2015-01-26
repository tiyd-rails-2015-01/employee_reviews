require 'minitest/autorun'
require 'minitest/pride'
require './department.rb'
require './employee.rb'

class TestEmployeeReview < Minitest::Test

  def self.test_order
    :alpha
  end

  def test_01_employee_and_department_classes_exit
    assert Employee
    assert Department
  end

  def test_02_initalize_department_name_employee_name_and_salary
    new_employee = Employee.new("Max Power", 30000)
    his_department = Department.new("Sales")
    assert his_department.get_department_name == "Sales"
    assert new_employee.get_employee_name == "Max Power"
    assert new_employee.get_employee_salary == 30000
  end

  def test_03_assign_multiple_employees_into_department
    new_employee = Employee.new("Max Power", 30000)
    new_employee2 = Employee.new("Roger Wilco", 45000)
    their_department = Department.new("Sales")
    their_department.add_employee(new_employee)
    their_department.add_employee(new_employee2)
  #  assert their_department.output_employee_name == "Max Power\n Roger Wilco"
  end
end
