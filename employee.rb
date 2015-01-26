class Employee

  attr_reader :name, :salary, :review

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

    positive_keywords = [ "positive",
                          "asset",
                          "happy",
                          "effective",
                          "perfect",
                          "consistent",
                          "pleasure"]

    negative_keywords = [ "difficult",
                          "negative",
                          "not",
                          "inadequate",
                          "concerns",
                          "disagreement",
                          "willbehung"]

    review_words = @review.split(/\s/)
    positive_review_words = review_words & positive_keywords
    negative_review_words = review_words & negative_keywords

    if negative_review_words.length > positive_review_words.length
      isReviewPositive = false
    end

    return isReviewPositive
  end


  def assignRaise( percentage )
    @salary += @salary * percentage
  end

  def assignRaiseLumpSum( lumpSum )
    @salary += lumpSum
  end

  def parseReviewText

    fullText = File.open("./sample_reviews.txt").read.split(/POSITIVE REVIEW\s\d:|NEGATIVE REVIEW\s\d:/)

    @review = fullText[ fullText.index{ |blurb| blurb.include?(@name) } ].strip

  end

end
