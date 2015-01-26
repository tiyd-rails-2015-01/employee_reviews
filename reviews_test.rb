require 'minitest/autorun'
require 'minitest/pride'
require './department'
require './employee'

class ReviewsTest < Minitest::Test
  def test_department_class_exists
    assert Department
  end

  def test_employee_class_exists
    assert Employee
  end
end
