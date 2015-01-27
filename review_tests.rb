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
    new_employee = Employee.new("Mark", 100000)
    assert_equal "Mark", new_employee.name
    assert_equal 100000, new_employee.salary
  end

  def test_03_department_takes_one_argument
    new_departent = Department.new("R&D")
    assert_equal "R&D", new_departent.dep_name
  end

  def test_04_add_employee_to_department
    new_employee = Employee.new("Joey", 100000)
    new_departent = Department.new("R&D")
    new_departent.add(new_employee)
    assert_equal "R&D", new_employee.department
    refute "Management" == new_employee.department
  end

  def test_05_get_employee_name
    new_employee = Employee.new("John", 100000)
    assert_equal "John", new_employee.name
    refute "Bob" == new_employee.name
  end

  def test_06_get_employee_salary
    new_employee = Employee.new("Mason", 100000)
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
    hank = Employee.new("Hank", 240000)
    mk = Employee.new("MK", 235000)
    kay = Employee.new("Kay", 102000)
    accounting.add(hank)
    accounting.add(mk)
    accounting.add(kay)
    assert_equal 577000, accounting.salary
  end

  def test_09_employee_has_review_text
    bob = Employee.new("Bob", 100000)
    bob.add_review("Okay")
    assert_equal "Okay", bob.reviews[0]
  end

  def test_10_evaluate_employees
    frank = Employee.new("Frank", 240000)
    frank.performance(5)
  end

  def test_11_give_raises
    hank = Employee.new("Hank", 240000)
    hank.give_raise(1000)
    assert hank.salary == 241000
  end

  def test_12_give_dept_raise
    accounting = Department.new("Accounting")
    hank = Employee.new("Hank", 10000)
    mk = Employee.new("MK", 10000)
    mk.evaluation = false
    hank.evaluation = true
    accounting.add(hank)
    accounting.add(mk)
    accounting.dept_raise(1500)
    assert_equal accounting.salary, 21500
  end
end
