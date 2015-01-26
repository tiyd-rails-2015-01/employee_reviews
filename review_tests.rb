require 'minitest/autorun'
require 'minitest/pride'
require './employee'
require './department'


class ReviewTests < Minitest::Test
  def test_00_employee_class_exists
    Employee
  end

  def test_01_department_class_exists
    Department
  end

  def test_02_employee_takes_two_arguments
    new_employee = Employee.new("Bob", 100000)
    assert_equal "Bob", new_employee.name
    assert_equal 100000, new_employee.salary
  end

  def test_03_department_takes_one_argument
    new_departent = Department.new("R&D")
    assert_equal "R&D", new_departent.dep_name
  end

  def test_04_add_employee_to_department
    new_employee = Employee.new("Bob", 100000)
    new_departent = Department.new("R&D")
    new_departent.add(new_employee)
    assert_equal "R&D", new_employee.department
    refute "Management" == new_employee.department
  end

  def test_05_get_employee_name
    new_employee = Employee.new("Bob", 100000)
    assert_equal "Bob", new_employee.name
    refute "Jon" == new_employee.name
  end

  def test_06_get_employee_salary
    new_employee = Employee.new("Bob", 100000)
    assert_equal 100000, new_employee.salary
    refute 1000000 == new_employee.salary
  end

  def test_07_get_department_name
    new_departent = Department.new("R&D")
    assert_equal "R&D", new_departent.dep_name
    refute "Management" == new_departent.dep_name
  end

  def test_08_get_department_salary
    accounting = Department.new("Accounting")
    bob = Employee.new("Bob", 240000)
    mk = Employee.new("MK", 235000)
    kay = Employee.new("Kay", 102000)
    accounting.add(bob)
    accounting.add(mk)
    accounting.add(kay)
    assert_equal 577000, accounting.salary
  end
end
