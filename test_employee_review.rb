require "minitest/autorun"
require 'minitest/pride'

class EmployeeReviewTest < Minitest::Test

  def test_01_department_class_takes_arguments
    assert Department.new(Accounting)
    refute Department.new
  end









  
end
