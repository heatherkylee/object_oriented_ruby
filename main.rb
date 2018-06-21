require './employee'
require './manager'

employee1 = Actualize::Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Actualize::Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)

employee1.print_info
employee2.print_info


manager1 = Actualize::Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])

manager1.print_info
manager1.send_report

manager1.give_all_raises

p employee1.active
p employee2.active
p manager1.fire_all_employees
p employee1.active
p employee2.active