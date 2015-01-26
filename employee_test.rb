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

  def test_can_create_employee
    employee = Employee.new("Jordan", 75000)
    assert employee.employee_name == "Jordan"
    assert employee.salary == 75000
  end

  def test_can_add_employee_to_department
    sports = Department.new("sports")
    sally = Employee.new('Sally', 10000.00)
    sports.add_employee(sally)
  end
end
