require 'minitest/autorun'
require 'minitest/pride'
require './employee'

class EmployeeTest < Minitest::Test

  def test_employee_class_exists
    assert Employee
  end
end
