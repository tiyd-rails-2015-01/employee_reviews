require 'minitest/autorun'
require 'minitest/pride'
require './employee'
require './department'


class EmployeeReviewsTest < Minitest::Test
  def test_employee_class_exists
    assert Employee
  end

  def test_department_class_exists
    assert Department
  end

  def test_employee_can_take_two_parameters
    assert Employee.new("John Smith", 100000)
  end

  def test_department_can_take_name_parameter
    assert Department.new("Accounting")
  end

  def test_can_get_employee_name
    employee1= Employee.new("John Smith", "100,000")
    assert "John Smith", employee1.name
  end

  def test_can_get_employee_salary
    employee1= Employee.new("John Smith", "100,000")
    assert_equal "100,000", employee1.salary
  end

  def test_can_get_department_name
    department1= Department.new("Accounting")
    assert_equal "Accounting", department1.department_name
  end

  def test_can_get_department_of_employee
    department1= Department.new("Accounting")
    employee1= Employee.new("John Smith", "100,000")
    department1.add(employee1)


    assert_equal "Accounting", employee1.department

  end

  def test_can_get_total_salary_for_employees_of_department
    department1= Department.new("Accounting")
    employee1= Employee.new("John Smith", 100000)
    employee2= Employee.new("Jane Smith", 80000) #patriarchy
    employee3= Employee.new("Bob Smith", 100000)

    department1.add(employee1)
    department1.add(employee2)
    department1.add(employee3)

    assert_equal 280000, department1.total_salary
  end

  def test_can_add_employee_review_to_employee
    employee1= Employee.new("John Smith", 100000)
    employee1.review= "John is a wonderful employee. A real go-getter! I don't know what
    this team would do without him. He does eat all the snacks in the breakroom though."

    assert_equal "John is a wonderful employee. A real go-getter! I don't know what
    this team would do without him. He does eat all the snacks in the breakroom though.", employee1.review
  end

  def test_employee_performance
    employee1= Employee.new("John Smith", 100000)

    assert_equal true, employee1.performance("Satisfactory")
  end

  def test_employee_can_get_raise
    employee1= Employee.new("John Smith", 100000)
    employee1.employee_raise(5)

    assert_equal 105000, employee1.salary
  end

  def test_department_can_get_raise
    department1= Department.new("Accounting")
    employee1= Employee.new("John Smith", 100000)
    employee2= Employee.new("Jane Smith", 80000) #patriarchy

    department1.add(employee1)
    department1.add(employee2)
    department1.department_raise(20000)

    assert_equal 200000, department1.department_salary
  end


end
