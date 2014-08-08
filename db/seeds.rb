
Theme.create!([
  {name: "Polka dot", navbar: false, background: "http://images2.layoutsparks.com/1/39860/polka-dot-love-black.png", color: "#FFFFFF", transparent: false},
  {name: "snow", navbar: true, background: "http://www.living-rock-church.org/files/Images/Background_Images/snow.jpg", color: "#FFFFFF", transparent: true}
])

User.create!([
  {name: "wendy", password_digest: "$2a$10$XPp6h5HGKqk1yAbSXGODqOh4bwXbhBND6aq5iwDiYgZLx0tUBmM1i", theme_id: 2},
  {name: "lucy", password_digest: "$2a$10$wmu2Q5dsYuI1h99DRupTsODWMCgQXTeMjNxfRD.IDnjuzJeQuv3aK", theme_id: 2}
])
