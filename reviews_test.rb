require 'minitest/autorun'
require 'minitest/pride'
require './employee_reviews'
require './employee'
require './department'

class ReviewsTest < Minitest::Test

  def test_employee_class_exists
    assert Employee
  end

  def test_department_class_exists
    assert Department
  end

  def test_create_new_employee
    employee = Employee.new("Anna", 35)
    assert employee.name == "Anna"
  end




end
