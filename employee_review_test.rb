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

  def test_05_employees_can_have_reviews
    rich = Employee.new("Richard Johnson", 55000)
    rich.review = "Rich is a total dick, pun intended!"
    assert_equal "Rich is a total dick, pun intended!", rich.review
  end

  def test_06_employees_can_be_marked_satisfactory
    sherlock = Employee.new("Sherlock Holmes", 100000)
    sherlock.satisfactory = true
    assert_equal true, sherlock.satisfactory
  end

  def test_07_employees_can_recieve_raises
    luke = Employee.new("Lucas Skywalker", 50000)
    anakin = Employee.new("Anakin Skywalker", 100000)
    luke.give_raise(0.10)
    anakin.give_raise(0.25)
    assert_equal 55000, luke.salary
    assert_equal 125000, anakin.salary
  end

end
