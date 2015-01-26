require 'minitest/autorun'
require 'minitest/pride'
require './employee.rb'
require './department.rb'

class ReviewTest <Minitest::Test

  def test_employee_exists
    assert Employee
  end

  def test_department_exists
    assert Department
  end

  def test_employees_have_salary_and_name
    sara = Employee.new("Sara Bupkis" , 100000)
    assert_equal 100000, sara.salary
    assert_equal "Sara Bupkis", sara.name
  end

  def test_adding_employees_to_deptartment
    sara = Employee.new("Sara Bupkis" , 100000)
    department = Department.new("Sales")
    department.add(sara)
    assert_equal "Sales", sara.department
  end

  def test_getting_department_salary_totals
    sara = Employee.new("Sara Bupkis" , 100000)
    dave = Employee.new("Dave Mathis", 300)
    department = Department.new("Sales")
    department.add(sara)
    department.add(dave)
    assert_equal 100300, department.salary
  end

  def test_reviewing_an_employee
    dave = Employee.new("Dave Mathis",300)
    review_text = "Dave is terrible, I hate Dave. If I had a gun with 2"+
    "bullets and Hitler and Dave were standing infront of me I would shoot"+
    " Dave twice. \nNot only is Dave terrible at his job we pay him far too much."+
    " Dave makes almost a dollar a day. This is insanity, Dave should be paying us to work here."
    dave.review = review_text
    assert_equal review_text, dave.review
  end

  def test_mark_an_employee_satisfactoy_or_not
    dave = Employee.new("Dave Mathis",300)
    dave.good_employee = false
    refute dave.good_employee
  end

  def test_giving_an_employee_a_raise
    sara = Employee.new("Sara Bupkis" , 100001)
    sara.raise_salary(50)
    assert_equal 150001.50, sara.salary
  end

  def test_raise_department_salary
    sara = Employee.new("Sara Bupkis" , 100000)
    dave = Employee.new("Dave Mathis", 300)
    department = Department.new("Sales")
    department.add(sara)
    department.add(dave)
    department.department_raise(20000)
    assert_equal 120300, department.salary
  end

  def test_raise_department_salary_only_if_employees_are_good
    sara = Employee.new("Sara Bupkis" , 100000)
    dave = Employee.new("Dave Mathis", 300)
    department = Department.new("Sales")
    department.add(sara)
    department.add(dave)
    dave.good_employee = false
    department.department_raise(20000)
    assert_equal 120300, department.salary
    assert_equal 300, dave.salary
  end

  def test_hard_mode
    zeke = Employee.new("Zeke" , 50000)
    yvonne = Employee.new("Yvonne", 50000)
    xavier = Employee.new("Xavier" , 50000)
    wanda = Employee.new("Wanda", 50000)
    zeke.review = "Zeke is a very positive person and encourages those around him, but he has not done well technically this year.  There are two areas in which Zeke has room for improvement.  First, when communicating verbally (and sometimes in writing), he has a tendency to use more words than are required.  This conversational style does put people at ease, which is valuable, but it often makes the meaning difficult to isolate, and can cause confusion.\n"+
    "Second, when discussing new requirements with project managers, less of the information is retained by Zeke long-term than is expected.  This has a few negative consequences: 1) time is spent developing features that are not useful and need to be re-run, 2) bugs are introduced in the code and not caught because the tests lack the same information, and 3) clients are told that certain features are complete when they are inadequate.  This communication limitation could be the fault of project management, but given that other developers appear to retain more information, this is worth discussing further."
    yvonne.review = "Thus far, there have been two concerns over Yvonne's performance, and both have been discussed with her in internal meetings.  First, in some cases, Yvonne takes longer to complete tasks than would normally be expected.  This most commonly manifests during development on existing applications, but can sometimes occur during development on new projects, often during tasks shared with Andrew.  In order to accommodate for these preferences, Yvonne has been putting more time into fewer projects, which has gone well."+
    "Second, while in conversation, Yvonne has a tendency to interrupt, talk over others, and increase her volume when in disagreement.  In client meetings, she also can dwell on potential issues even if the client or other attendees have clearly ruled the issue out, and can sometimes get off topic."
    xavier.review = "Xavier is a huge asset to SciMed and is a pleasure to work with.  He quickly knocks out tasks assigned to him, implements code that rarely needs to be revisited, and is always willing to help others despite his heavy workload.  When Xavier leaves on vacation, everyone wishes he didn't have to go"+
    "Last year, the only concerns with Xavier performance were around ownership.  In the past twelve months, he has successfully taken full ownership of both Acme and Bricks, Inc.  Aside from some false starts with estimates on Acme, clients are happy with his work and responsiveness, which is everything that his managers could ask for."
    wanda.review = "Wanda has been an incredibly consistent and effective developer.  Clients are always satisfied with her work, developers are impressed with her productivity, and she's more than willing to help others even when she has a substantial workload of her own.  She is a great asset to Awesome Company, and everyone enjoys working with her.  During the past year, she has largely been devoted to work with the Cement Company, and she is the perfect woman for the job.  We know that work on a single project can become monotonous, however, so over the next few months, we hope to spread some of the Cement Company work to others.  This will also allow Wanda to pair more with others and spread her effectiveness to other projects."

    zeke.evaluate_proformance
    yvonne.evaluate_proformance
    xavier.evaluate_proformance
    wanda.evaluate_proformance

    refute zeke.good_employee
    refute yvonne.good_employee
    assert xavier.good_employee
    assert wanda.good_employee

end
