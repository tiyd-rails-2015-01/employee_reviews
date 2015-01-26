require "minitest/autorun"
require 'minitest/pride'
require './department.rb'

class EmployeeReviewTest < Minitest::Test

  def test_01_department_class_takes_arguments
    assert Department.new("Accounting")
  end










end
