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



end
