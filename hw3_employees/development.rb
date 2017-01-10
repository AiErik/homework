require './department.rb'

operations = Department.new(name: 'Operations')

robbie = Employee.new(name: 'Robbie Allen',email: 'robbie@automatedinsights.com', phone: '919-919-9191',salary: 1000000)

operations.add_employee(robbie)

puts "Employee name: #{robbie.name}"
puts "Employee salary: #{robbie.salary}"
puts "Department name: #{operations.name}"

adam = Employee.new(name: 'Adam Smith', email: 'adam@automatedinsights.com', phone: '919-919-9191', salary: 900000)
reggie = Employee.new(name: 'Adam Long', email: 'reggie@automatedinsights.com', phone: '919-919-9191', salary: 800000)

operations.add_employee(adam)
operations.add_employee(reggie)

puts "The #{operations.name} department now consists of #{operations.department_employees}"
puts "The #{operations.name} department employees earn a cumulative salary of #{operations.department_salary}"

robbie.add_review("Robbie is a visionary leader. His hoodies are the best.

Pay that man. Pay that man his money.")

puts "Robbie's review: #{robbie.review}"
puts "Robbie got a $500,000 raise"

robbie.raise(500000)

puts "Robbie's new salary: #{robbie.salary}"

puts "Hey #{operations.name} Department, there's $500,000 up for grabs. Who's worthy?"

robbie.meets_expectations?(true)
adam.meets_expectations?(false)
reggie.meets_expectations?(true)

operations.department_raise(500000)
puts "Robbie's performance has been deemed acceptable. Robbie shall benefit from the #{operations.name} Department's bonus pool. Robbie now makes #{robbie.salary}."
puts "Adam really dropped the ball. He shall not pass go, and he shall not collect $200. Adam still makes #{adam.salary}."
puts "Reggie is a true rock star. Make it rain upon him. Reggie's salary is now #{reggie.salary}."
