class Employee

  attr_reader :name, :salary

  def initialize( name, salary )
    @name = name
    @salary = salary
    @review = ""
  end

  def addReview( review )
    @review = review
  end
  
end
