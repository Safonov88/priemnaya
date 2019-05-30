AdminUser.create!([
  {email: "admin@example.com",password: "password"}
])
Faculty.create!([
  {name: "Открытый"}
])
Department.create!([
  {name: "Очный", faculty_id: 1},
  {name: "Заочный", faculty_id: 1}
])
Subject.create!([
  {name: "Предмет номер один"},
  {name: "Предмет номер два"},
  {name: "Предмет номер три"}
])
Entrant.create!([
  {first_name: "asd", last_name: "asd", patronymic: "", passport: "234555", department_id: nil}
])

