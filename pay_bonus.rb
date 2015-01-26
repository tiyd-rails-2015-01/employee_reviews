require 'minitest/autorun'
require 'minitest/pride'
require './employee.rb'
require './department.rb'

class PayBonusTest < Minitest::Test

  def test_01_employee_class_exists
    assert Employee
  end

  def test_02_department_class_exists
    assert Department
  end

  def test_03_create_department
    accounting = Department.new("accounting")
    assert_equal "accounting", accounting.department_name
  end

  def test_04_create_employee
    suzy = Employee.new(name: "suzy", salary: 80000)
    assert_equal "suzy", suzy.name
    assert_equal 80000, suzy.salary
  end

  def test_05_employee_has_department
    suzy = Employee.new(name: "suzy", salary: 80000)
    accounting = Department.new("accounting")
    accounting.add_employee(suzy)
    assert accounting.employees.include?(suzy)
  end

  def test_06_can_pull_employee
    suzy = Employee.new(name: "suzy", salary: 80000)
    timmy = Employee.new(name: "timmy", salary: 60000)
    tommy = Employee.new(name: "tommy", salary: 75000)
    assert_equal "suzy", suzy.name
    assert_equal 80000, suzy.salary
  end


    # employees_have_salaries



end
