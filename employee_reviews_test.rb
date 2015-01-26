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
    employee1= Employee.new("Xavier Smith", 100000)
    employee1.review= "Xavier is a huge asset to SciMed and is a pleasure to work with.  He quickly knocks out tasks assigned to him, implements code that rarely needs to be revisited, and is always willing to help others despite his heavy workload.  When Xavier leaves on vacation, everyone wishes he didn't have to go
    Last year, the only concerns with Xavier performance were around ownership.  In the past twelve months, he has successfully taken full ownership of both Acme and Bricks, Inc.  Aside from some false starts with estimates on Acme, clients are happy with his work and responsiveness, which is everything that his managers could ask for.
    "
    employee2= Employee.new("Yvonne Smith", 100000)
    employee2.review=
    "Thus far, there have been two concerns over Yvonne's performance, and both have been discussed with her in internal meetings.  First, in some cases, Yvonne takes longer to complete tasks than would normally be expected.  This most commonly manifests during development on existing applications, but can sometimes occur during development on new projects, often during tasks shared with Andrew.  In order to accommodate for these preferences, Yvonne has been putting more time into fewer projects, which has gone well.

    Second, while in conversation, Yvonne has a tendency to interrupt, talk over others, and increase her volume when in disagreement.  In client meetings, she also can dwell on potential issues even if the client or other attendees have clearly ruled the issue out, and can sometimes get off topic."

    assert_equal "Xavier is a huge asset to SciMed and is a pleasure to work with.  He quickly knocks out tasks assigned to him, implements code that rarely needs to be revisited, and is always willing to help others despite his heavy workload.  When Xavier leaves on vacation, everyone wishes he didn't have to go
    Last year, the only concerns with Xavier performance were around ownership.  In the past twelve months, he has successfully taken full ownership of both Acme and Bricks, Inc.  Aside from some false starts with estimates on Acme, clients are happy with his work and responsiveness, which is everything that his managers could ask for.
    ", employee1.review

    assert employee1.satisfactory?
    refute employee2.satisfactory?
  end

  def test_employee_performance
    employee1= Employee.new("John Smith", 100000)
    employee1.satisfactory = true
    assert employee1.satisfactory?
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

    assert_equal 200000, department1.department_raise(20000)
  end

  def test_employee_can_get_reasonable_raise
    department1= Department.new("Accounting")
    employee1= Employee.new("John Smith", 100000)
    employee2= Employee.new("Jane Smith", 100000)

    department1.add(employee1)
    department1.add(employee2)
    employee2.satisfactory = true
    department1.department_raise(20000)

    assert_equal 120000, employee2.salary
    assert_equal 220000, department1.total_salary
  end




end
