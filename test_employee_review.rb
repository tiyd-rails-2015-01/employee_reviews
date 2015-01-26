require "minitest/autorun"
require 'minitest/pride'
require './department.rb'

class EmployeeReviewTest < Minitest::Test

  def test_01_department_class_takes_arguments
    assert Department.new("Accounting")
  end

  def test_02_employee_class_takes_two_arguments
    assert Employee.new("Chad Wellington", 72000)
  end








end
