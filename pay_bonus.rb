require 'minitest/autorun'
require 'minitest/pride'
require './employee_class.rb'
require './department_class.rb'

class PayBonusTest < Minitest::Test

  def test_01_employee_class_exists
    assert Employee
  end

 

end
