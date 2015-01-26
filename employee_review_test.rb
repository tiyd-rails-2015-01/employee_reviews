require 'minitest/autorun'
require 'minitest/pride'
require './department'
require './employee'

class EmployeeReviewTest < Minitest::Test

  def test_00_employee_and_department_classes_exist
    assert Employee
    assert Department
  end

  def test_01_employees_have_a_name_and_salary
    bob = Employee.new("Bob", 50000)
    assert bob
    assert bob.name == "Bob"
    assert bob.salary == 50000
  end

  def test_02_departments_can_have_a_name
    dept = Department.new("Research and Development")
    assert dept.dept_name = "Research and Development"
  end

  def test_03_employees_can_be_assigned_a_department
    dave = Employee.new("David Johnson", 48000)
    rd_department = Department.new("Research and Development")
    rd_department.add_employee(dave)
    assert rd_department.has_employee_with_name?("David Johnson")
  end

  def test_04_can_calculate_departments_total_salary
    dave = Employee.new("David Johnson", 48000)
    tom = Employee.new("Tom Jones", 60000)
    bill = Employee.new("William Pen", 50000)
    rd_department = Department.new("Research and Development")
    rd_department.add_employee(dave)
    rd_department.add_employee(tom)
    rd_department.add_employee(bill)
    assert_equal 158000, rd_department.total_salary 
  end

end
