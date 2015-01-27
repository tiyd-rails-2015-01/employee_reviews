require 'minitest/autorun'
require 'minitest/pride'
require './department.rb'
require './employee.rb'

class TestEmployeeReview < Minitest::Test

  def self.test_order
    :alpha
  end

  def test_01_employee_and_department_classes_exit
    assert Employee
    assert Department
  end

  def test_02_initalize_department_name_employee_name_and_salary
    new_employee = Employee.new("Max Power", 30000)
    his_department = Department.new("Sales")
    assert his_department.get_department_name == "Sales"
    assert new_employee.get_employee_name == "Max Power"
    assert new_employee.get_employee_salary == 30000
  end

  def test_03_assign_multiple_employees_into_department
    new_employee = Employee.new("Max Power", 30000)
    new_employee2 = Employee.new("Roger Wilco", 45000)
    their_department = Department.new("Sales")
    their_department.add_employee(new_employee)
    their_department.add_employee(new_employee2)
  #  assert their_department.output_employee_name == "Max Power\n Roger Wilco"
  end

  def test_04_sum_total_salary
    new_employee = Employee.new("Max Power", 30000)
    new_employee2 = Employee.new("Roger Wilco", 45000)
    their_department = Department.new("Sales")
    their_department.add_employee(new_employee)
    their_department.add_employee(new_employee2)
    assert 75000 == their_department.get_total_salary
  end

  def test_05_give_indiviual_raise
    new_employee = Employee.new("Max Power", 30000)
    new_employee2 = Employee.new("Roger Wilco", 45000)
    assert new_employee.give_raise(900) == 30900
  end

  def test_06_change_employee_performance
    new_employee = Employee.new("Max Power", 30000)
    assert new_employee.get_performace
    new_employee.set_bad_performance
    refute new_employee.get_performace
  end

  def test_07_raise_for_department
    new_employee = Employee.new("Max Power", 30000)
    new_employee2 = Employee.new("Roger Wilco", 45000)
    new_employee3 = Employee.new("Smitty the Pirate", 45000, false)
    their_department = Department.new("Sales")
    their_department.add_employee(new_employee)
    their_department.add_employee(new_employee2)
    their_department.add_employee(new_employee3)
    their_department.give_raise(2000)
    assert new_employee.get_employee_salary > 30000
    assert new_employee2.get_employee_salary > 45000
    assert_equal new_employee3.get_employee_salary, 45000
  end

  def test_08_set_and_get_review_text
    new_employee = Employee.new("Max Power", 30000)
    new_employee.set_review_text("Not energetic enough at work")
    assert new_employee.get_review_text == "Not energetic enough at work"
  end

end
