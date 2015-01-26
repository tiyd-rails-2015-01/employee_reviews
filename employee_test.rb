require 'minitest/autorun'
require 'minitest/pride'
require './employee'
require './department'

class EmployeeTest < Minitest::Test

  def test_employee_class_exists
    assert Employee
  end

  def test_department_class_exists
    assert Department
  end

  def test_can_create_department
    department = Department.new("development")
    assert department.department_name == "development"
  end
end
