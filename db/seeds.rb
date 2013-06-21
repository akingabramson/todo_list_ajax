# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create([
  {username: 'Asher', password: '123'},
  {username: 'Sean', password: '123'}
  ])

todolists = TodoList.create([
  {title: 'First List', user_id: 1},
  {title: 'Second List', user_id: 2}
  ])

todoitems = TodoItem.create([
  {completed: false, task: "Wash dishes", todo_list_id: 1},
  {completed: false, task: "Dry dishes", todo_list_id: 1},
  {completed: false, task: "Eat dishes", todo_list_id: 2}
  ])