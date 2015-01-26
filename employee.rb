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

  def evaluateReview
    isReviewPositive = true
    # this will parse the @review later
    return isReviewPositive
  end

  def assignRaise( percentage )
    @salary += @salary * percentage
  end

  def assignRaiseLumpSum( lumpSum )
    @salary += lumpSum
  end
end
