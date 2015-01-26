class Department
attr_reader :name, :roster
  def initialize(name)
    @roster = []
    @name = name
  end

  def add_employee(employee)
    @roster << employee
  end


end
