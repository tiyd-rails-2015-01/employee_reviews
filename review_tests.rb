require 'minitest/autorun'
require 'minitest/pride'
require './employees'
require './departments'

class ReviewTest < Minitest::Test

  def test_class_employee_exists
    assert Employee
  end

  def test_class_department_exists
    assert Department
  end

  def test_employee_has_name_and_salary
    test_employee = Employee.new("Mike Marbry", 100000)
    assert_equal 100000, test_employee.salary
  end

  def test_add_employee_to_department
    mike = Employee.new("Mike Marbry", 100000)
    management = Department.new("Management")
    management.add(mike)
    assert "Management" == mike.department
  end

  def test_get_employees_name
    mike = Employee.new("Mike Marbry", 100000)
    assert "Mike Marbry" == mike.name
  end

  def test_get_employee_salary
    mike = Employee.new("Mike Marbry", 100000)
    assert 100000 == mike.salary
  end
end
