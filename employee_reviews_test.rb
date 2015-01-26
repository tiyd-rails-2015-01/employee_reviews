require 'minitest/autorun'
require 'minitest/pride'
require './employee'
require './department'


class EmployeeReviewTest< Minitest::Test

  def self.test_order
    :alpha
  end

  def test_00_employee_class_and_department_exists
    assert Employee
    assert Department
  end

  def test_01_employee_has_name_and_salary
    name = Employee.new("Steve", "45000")
    assert "Steve" "45000", name
    assert_equal "Steve", name.name
    assert_equal "45000", name.salary
  end

  def test_02_add_employee_to_department
    sports = Department.new("Sports")
    steve = Employee.new("Steve", "45000")
    assert sports.add_employee(steve)

  end

end
