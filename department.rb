class Department
  def initialize( name )
    @name = name
    @employees = []
  end

  def addEmployee( employee )
    @employees << employee
  end
end
