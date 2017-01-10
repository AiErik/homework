class Employee
  def initialize(name:, email:, phone:, salary:)
    @name = name
    @email = email
    @phone = phone
    @salary = salary
    @review = ''
    @expectations = nil
  end

  def name
    @name
  end

  def email
    @email
  end

  def phone
    @phone
  end

  def salary
    @salary
  end

  def review
    @review
  end

  def expectations
    @expectations
  end

  def add_review(r)
    @review << r
  end

  def meets_expectations?(s)
    @expectations = s
  end

  def raise(r)
    @salary += r
  end
end
