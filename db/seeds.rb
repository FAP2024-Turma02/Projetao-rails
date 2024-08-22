# db/seeds.rb

School::Comment.delete_all
School::Enrollment.delete_all
School::Student.delete_all
School::Course.delete_all


students = School::Student.create!([
  {
    name: "student 1",
    email: "student1@email.com",
    birthday: Date.new(2024, 8, 21)
  },
  {
    name: "student 2",
    email: "student2@email.com",
    birthday: Date.new(2023, 5, 15)
  },
  {
    name: "student 3",
    email: "student3@email.com",
    birthday: Date.new(2022, 11, 30)
  }
])

courses = School::Course.create!([
  {
    name: "Mathematics 101",
    description: "An introductory course to Mathematics.",
    workload: 40
  },
  {
    name: "Physics 101",
    description: "An introductory course to Physics.",
    workload: 45
  },
  {
    name: "Chemistry 101",
    description: "An introductory course to Chemistry.",
    workload: 50
  }
])

School::Comment.create!([
  {
    content: "comentario 1", 
    student: students[0],
    commentable: courses[0]
    },
    {
    content: "comentario 2", 
    student: students[1],
    commentable: courses[0]
    }
  ])

School::Enrollment.create!([
  {
    status: 0,
    expired_at: Date.new(2025, 8, 21),
    student: students[0],
    course: courses[0]
  },
  {
    status: 0,
    expired_at: Date.new(2025, 8, 21),
    student: students[1],
    course: courses[1]
  },
  {
    status: 1,
    expired_at: Date.new(2022, 8, 21),
    student: students[2],
    course: courses[2]
  }
])
