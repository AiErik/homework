require './employee.rb'

class Department
  def initialize(name:)
    @name = name
    @employees = []
  end

  def name
    @name
  end

  def employees
    @employees
  end

  def add_employee(a)
    @employees << a
  end

  def department_employees
    @employees.map {|employee| employee.name}
  end

  def department_salary
    salaries = @employees.map {|employee| employee.salary}
    salaries.inject(:+)
  end

  def expectations_employees_count
    employees.count {|employee| employee.expectations == TRUE}
  end

  def expectations_employees
    employees.select {|employee| employee.expectations == TRUE}
  end

  def department_raise(amount)
    expectations_employees().map {|employee| employee.raise((amount.to_f/expectations_employees().length).round(2))}
  end
end
