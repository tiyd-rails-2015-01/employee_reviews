require 'minitest/autorun'
require 'minitest/pride'
require './employee'
require './department'


class EmployeeReviewTest< Minitest::Test

  def self.test_order
    :alpha
  end

  def test_00_employee_class_and_department_exists
    assert Employee
    assert Department
  end

  def test_01_employee_has_name_and_salary_and_department
    name = Employee.new("James", "45000", "R & D")
    assert "James" "45000" "R and D", name
    assert_equal "James", name.name
    assert_equal "45000", name.salary
    assert_equal "R & D", name.department
  end

  # def test_02_create_new_employee_with_salary
  #   name1 = Employee.new("James", "45000", "R & D")
  #   name2 = Employee.new("Sara", "39000", "R & D")
  #   roster = []
  #   roster =
  #
  # end

end
