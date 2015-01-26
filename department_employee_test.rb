require 'minitest/autorun'
require 'minitest/pride'
require './departments'
require './employees'


class EmployeeReviewTest <Minitest::Test

  def test_01_department_class_exists
    assert Department
  end

  def test_02_employee_class_exist
    assert Employee
  end

  def test_03_add_employee_to_department
    sports = Department.new("Sports")
    steve = Employee.new("Steve", 50000)
    assert sports.add_employee(steve)
  end

  def test_04_get_employee_name
    john = Employee.new("John", 25000)
    assert john.name == "John"
    sally = Employee.new("Sally", 50000)
    assert sally.name == "Sally"
  end

  def test_05_get_employee_salary
    john = Employee.new("John", 25000)
    assert john.salary == 25000
    sally = Employee.new("Sally", 50000)
    assert sally.salary == 50000
  end

  def test_06_get_department_name
    sports = Department.new("Sports")
    assert sports.name == "Sports"

  end
end
