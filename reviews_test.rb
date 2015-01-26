require 'minitest/autorun'
require 'minitest/pride'
require './department'
require './employee'

class ReviewsTest < Minitest::Test
  def test_department_class_exists
    assert Department
  end

  def test_employee_class_exists
    assert Employee
  end

  def test_department_class_initializes_with_name
    assert Department.new("")
  end

  def test_employee_class_initializes_with_name_and_salary
    assert Employee.new("", "")
  end

  def test_can_add_employees_to_departments
    goat_department = Department.new("Division of Goat Observation")
    katie = goat_department.add_employee("Katie", 100000)
    assert_equal Employee, katie.class

  end
end
