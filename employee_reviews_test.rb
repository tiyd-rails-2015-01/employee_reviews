require 'minitest/autorun'
require 'minitest/pride'
require './employee'
require './department'

class EmployeeReviewsTest < Minitest::Test
  def test_employee_class_exists
    assert Employee
  end

  def test_department_class_exists
    assert Department
  end

  def test_employee_can_take_two_parameters
    assert Employee.new("John Smith", 100000)
  end

  def test_department_can_take_name_parameter
    assert Department.new("Accounting")
  end

  def test_can_get_employee_name
    employee1= Employee.new("John Smith", "100,000")
    assert "John Smith", employee1.name
  end

  def test_can_get_employee_salary
    employee1= Employee.new("John Smith", "100,000")
    assert "100,000", employee1.salary
  end

end
