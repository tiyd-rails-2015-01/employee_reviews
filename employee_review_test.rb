require 'minitest/autorun'
require 'minitest/pride'
require './employee'
require './department'

class EmployeeReviewTest <Minitest::Test

  def test_01_department_class_with_name_exists
   assert Department
   assert Department.new("")
  end

  def test_02_employee_class_with_name_salary_exists
    assert Employee
    assert Employee.new("", 100000)
  end

  def test_03_add_employee_to_department
    sports = Department.new("Sports")
    steve = Employee.new("Steve", 100000)
    assert sports.add_employee(steve)
  end

  def test_04_get_employee_name
    john = Employee.new("John", 100000)
    assert john.name == "John"
    sally = Employee.new("Sally", 100000)
    assert sally.name == "Sally"
  end

  def test_05_get_employee_salary
    john = Employee.new("John", 100000)
    assert john.salary == 100000
  end

  def test_06_get_departments_name
    sports = Department.new("Sports")
    assert sports.name == "Sports"
  end

end
