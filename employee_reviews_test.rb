require 'minitest/autorun'
require 'minitest/pride'
require './employee'
require './department'

class EmployeeReviewsTest < Minitest::Test
  def test_employee_class_exists
    assert Employee
  end

  def test_department_class_exists
    assert Department
  end
end
