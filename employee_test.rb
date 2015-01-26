require 'minitest/autorun'
require 'minitest/pride'
require './employee'
require './department'

class EmployeeTest < Minitest::Test

  def test_employee_class_exists
    assert Employee
  end

  def test_department_class_exists
    assert Department
  end

  def test_can_create_department
    department = Department.new("Development")
    assert department.department_name == "Development"
  end

  def test_can_create_employee
    employee = Employee.new("Jordan", 75000)
    assert employee.employee_name == "Jordan"
    assert employee.salary == 75000
  end

  def test_can_add_employee_to_department
    department = Department.new("Development")
    employee = Employee.new("Jordan", 75000)
    department.add_employee(employee)
  end

  def test_can_get_employee_name
    employee = Employee.new("Jordan", 75000)
    assert "Jordan" == employee.employee_name
  end

  def test_can_get_employee_salary
    employee = Employee.new("Jordan", 75000)
    assert 75000 == employee.salary
  end

  def test_can_get_department_name
    department = Department.new("Development")
    assert "Development" == department.department_name
  end
end
