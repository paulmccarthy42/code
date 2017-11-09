require "./manager.rb"

test = Manager.new({
  first_name: "Nick",
  last_name: "Wolff",
  salary: 100000,
  active: true
  })

test.send_report