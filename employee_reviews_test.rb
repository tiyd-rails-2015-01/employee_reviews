require 'minitest/autorun'
require 'minitest/pride'
require './employee'
require './department'


class EmployeeReviewTest< Minitest::Test

  def self.test_order
    :alpha
  end

  def test_00_employee_class_exists
    assert Employee
  end


end
