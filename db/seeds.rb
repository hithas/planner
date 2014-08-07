Category.create!([
  {name: "Homework", color: "#d8cfe7"},
  {name: "study", color: "#d7bbc2"},
  {name: "Piano practice", color: "#CCFFCC"}
])
Checkpoint.create!([
  {name: nil, goal_id: 1, num: 2, completed: false},
  {name: nil, goal_id: 1, num: 3, completed: false},
  {name: "Prewriting", goal_id: 1, num: 4, completed: false},
  {name: "Rough Draft", goal_id: 1, num: 5, completed: false},
  {name: "Memorize song", goal_id: 2, num: 1, completed: false},
  {name: "Edit- Round 1", goal_id: 1, num: 6, completed: false},
  {name: "Edit -Round 2", goal_id: 1, num: 7, completed: false},
  {name: "Memorize song 2", goal_id: 2, num: 2, completed: false},
  {name: "Practice 2 hrs", goal_id: 2, num: 3, completed: false},
  {name: "Research", goal_id: 8, num: 1, completed: false},
  {name: "Prewrite", goal_id: 8, num: 2, completed: false},
  {name: "Rough Draft", goal_id: 8, num: 3, completed: false},
  {name: "Read+Outline Chapter 1", goal_id: 9, num: 1, completed: false},
  {name: "Read+Outline Chapter 2", goal_id: 9, num: 2, completed: false},
  {name: "Research", goal_id: 12, num: 1, completed: false},
  {name: "Prewrite", goal_id: 12, num: 2, completed: false},
  {name: "Rough Draft", goal_id: 12, num: 3, completed: false},
  {name: "asdf", goal_id: 12, num: 4, completed: false},
  {name: "sdfg", goal_id: 12, num: 5, completed: false},
  {name: "Read and outline chapter 1", goal_id: 25, num: 1, completed: false},
  {name: "Completed", goal_id: 26, num: 1, completed: false},
  {name: "Completed", goal_id: 26, num: 2, completed: false},
  {name: "Completed", goal_id: 26, num: 3, completed: false},
  {name: "Completed", goal_id: 26, num: 4, completed: false},
  {name: "Completed", goal_id: 26, num: 5, completed: false},
  {name: "Completed", goal_id: 26, num: 6, completed: false},
  {name: "Completed", goal_id: 26, num: 7, completed: false},
  {name: "Completed", goal_id: 26, num: 8, completed: false},
  {name: "Completed", goal_id: 26, num: 9, completed: false},
  {name: "Integrate JQuery", goal_id: 27, num: 1, completed: true},
  {name: "Add restrictions to users page", goal_id: 27, num: 2, completed: true},
  {name: "Delete unnecessary files", goal_id: 27, num: 3, completed: true},
  {name: "Fix change theme page", goal_id: 27, num: 4, completed: true},
  {name: "Fix view by category", goal_id: 27, num: 5, completed: true},
  {name: "Add edit checkpoints functionality", goal_id: 27, num: 6, completed: true},
  {name: "Fix view by category", goal_id: 27, num: 7, completed: true},
  {name: "Get Heroku to work", goal_id: 27, num: 8, completed: true},
  {name: "Create seeds file", goal_id: 27, num: 9, completed: true},
  {name: "Heroku", goal_id: 27, num: 10, completed: true}
])
Goal.create!([
  {name: "English Paper", category_id: 1, checkpoints: 3, desc: "Topic: 18th Century British Literature", user_id: nil},
  {name: "Chemistry Test", category_id: 2, checkpoints: 2, desc: "", user_id: nil},
  {name: "asdf", category_id: 1, checkpoints: 0, desc: "asdf", user_id: 5},
  {name: "zxcv", category_id: 2, checkpoints: 0, desc: "zxcv", user_id: 5},
  {name: "English Paper", category_id: 1, checkpoints: 5, desc: "Topic: 20th Century British Literature", user_id: 12},
  {name: "Science Test", category_id: 2, checkpoints: 1, desc: "", user_id: 12},
  {name: "CTD Ruby on Rails final project", category_id: 1, checkpoints: 10, desc: "", user_id: 13}
])
Theme.create!([
  {name: "Polka dot", navbar: false, background: "http://images2.layoutsparks.com/1/39860/polka-dot-love-black.png", color: "#FFFFFF", transparent: false},
  {name: "snow", navbar: true, background: "http://www.living-rock-church.org/files/Images/Background_Images/snow.jpg", color: "#FFFFFF", transparent: true}
])
User.create!([
  {name: "Harsha", password_digest: "$2a$10$6fgEO8qDnfoZAZ3mE02iT.NQeoQrxYAoOLzGKR05qFp5.IUMv46xa", theme_id: nil},
  {name: "wendy", password_digest: "$2a$10$XPp6h5HGKqk1yAbSXGODqOh4bwXbhBND6aq5iwDiYgZLx0tUBmM1i", theme_id: 2},
  {name: "lucy", password_digest: "$2a$10$wmu2Q5dsYuI1h99DRupTsODWMCgQXTeMjNxfRD.IDnjuzJeQuv3aK", theme_id: 2}
])
