require 'minitest/autorun'
require 'minitest/pride'
require './employee'
require './department'

class EmployeeReviewsTest < MiniTest::Test

  def test_department_class_exists
    assert Department
  end

  def test_employee_class_exists
    assert Employee
  end
end
