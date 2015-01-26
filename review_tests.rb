require 'minitest/autorun'
require 'minitest/pride'
require './employee'
require './department'


class ReviewTests < Minitest::Test
  def test_00_employee_class_exists
    Employee
  end

  def test_01_department_class_exists
    Department
  end

  def test_02_employee_takes_two_arguments
    new_employee = Employee.new("Bob", 100000)
    assert_equal "Bob", new_employee.name
    assert_equal 100000, new_employee.salary
  end

  def test_03_department_takes_one_argument
    new_employee = Department.new("R&D")
    assert_equal "R&D", new_employee.name
  end

  def test_04_add_employee_to_department
    new_employee = Employee.new("Bob")
    new_departent = Department.new("R&D")
    assert_equal "R&D", new_employee.department.name
  end
end
