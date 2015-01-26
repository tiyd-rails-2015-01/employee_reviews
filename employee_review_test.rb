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
    assert Employee.new("Bob", 50000)
  end


end
