AdminUser.create!([
  {email: "admin@example.com", password: "password"}
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
Stream.create!([
  {number: 1},
  {number: 2}
])
Group.create!([
  {number: 6894, department_id: 1, stream_id: 2}
])
Entrant.create!([
  {first_name: "asd", last_name: "asd", patronymic: "", passport: "234555", department_id: 1}
])
Exam.create!([
  {start_date: "2019-06-02 18:00:00", subject_id: 1, stream_id: 1}
])
ExamList.create!([
  {assessment: 2, entrant_id: 1, exam_id: 1}
])
Consultation.create!([
  {auditorium: 5874, start_date: "2019-06-01 14:00:00", stream_id: 1, subject_id: 2}
])
