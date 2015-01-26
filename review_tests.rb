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
    Employee.new("Bob", 100000)
  end

  def test_03_department_takes_one_argument
    Department.new("Bob")
  end
end
