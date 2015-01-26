require 'minitest/autorun'
require 'minitest/pride'
require './employee'
require './department'

# Create a new department (given its name). ##DONE##
# Create a new employee (given his/her name and salary). ##DONE##
# Add an employee to a department. ##DONE##
# Get an employee's name.
# Get an employee's salary.
# Get a department's name.
# Get a total salary for all employees in a department.
# Add some employee review text (a paragraph or two) to an employee.
# Mark whether an employee is performing satisfactorily or not satisfactorily.
# Give a raise to an individual. You decide if this makes sense in dollars or in percent.
# Give raises to a department's employees. You must pass this method a total dollar amount,
# and it must distribute the raise amounts reasonably to the department's employees.
# Only employees who are performing satisfactorily should get raises.

class EmployeeReviewsTest < MiniTest::Test

  def test_department_class_exists
    assert Department
  end

  def test_employee_class_exists
    assert Employee
  end

  def test_initialize_employee_with_name_and_salary
    assert Employee.new("Oliver Twist", 1.00)
  end

  def test_initialize_department_with_name
    assert Department.new("workhouse")
  end

  def test_can_add_employees_to_dept
    bumble = Employee.new("Mr. Bumble", 100)
    workhouse = Department.new("workhouse")
    assert workhouse.addEmployee(bumble)
  end

  def test_can_read_employee_name_and_salary
    bumble = Employee.new("Mr. Bumble", 100)
    assert_equal "Mr. Bumble", bumble.name
    assert_equal 100, bumble.salary
  end

  def test_can_read_dept_name
    workhouse = Department.new("workhouse")
    assert_equal "workhouse", workhouse.name
  end
end
