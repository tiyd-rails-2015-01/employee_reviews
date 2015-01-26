require "minitest/autorun"
require 'minitest/pride'
require './department.rb'
require './employee.rb'

class EmployeeReviewTest < Minitest::Test

  def test_01_department_class_takes_arguments
    assert Department.new("Accounting")
  end

  def test_02_employee_class_takes_two_arguments
    assert Employee.new("Chad Wellington", "72000")
  end

  def test_03_add_employees_to_departments
    accounting = Department.new("Accounting")
    chad = Employee.new("Chad Wellington III", "54000")
    accounting.add_employee(chad)
    assert accounting.employees == ["Chad Wellington III"]
  end

  def test_04_get_employee_name
    ruston = Employee.new("Ruston Aberdeen", "86000")
    assert ruston.name == "Ruston Aberdeen"
  end


end
