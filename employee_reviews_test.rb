require 'minitest/autorun'
require 'minitest/pride'
require './employee'
require './department'



class EmployeeReviewTest <Minitest::Test

  def test_00_validity
    assert true
  end

  def test_01_employee_class_exists
    assert Employee
  end

  def test_02_department_class
    assert Department
  end

  def test_03_add_employee_to_department
    sports = Department.new("Sports")
    steve = Employee.new("Steve", 50000)
    assert sports.add_employee(steve)
    assert sports.roster.include?(steve)
  end

  def test_04_get_employee_name
    john = Employee.new("John", 50000)
    assert john.name == "John"
    sally = Employee.new("Sally", 50000)
    assert sally.name == "Sally"
  end

  def test_05_employee_salary
    john = Employee.new("John", 50000)
    assert john.salary == 50000
  end

  def test_06_department_name
    departments_name = Department.new("Sports")
    assert departments_name.name == ("Sports")
  end

  def test_07_total_salary
    sports = Department.new("Sports")
    steve = Employee.new("Steve", 50000)
    sara = Employee.new("Sarah", 50000)
    assert sports.add_employee(steve)
    assert sports.add_employee(sara)
    assert_equal 100000, sports.total_salary

  end



end
