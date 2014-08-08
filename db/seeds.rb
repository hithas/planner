
Theme.create!([
  {name: "default", navbar: true, background: "http://img2.findthebest.com/sites/default/files/2307/media/images/White_430113_i0.png", color: "#FFFFFF", transparent: false},
  {name: "snow", navbar: true, background: "http://www.living-rock-church.org/files/Images/Background_Images/snow.jpg", color: "#FFFFFF", transparent: true},
  {name: "kawaii", navbar: true, background: "http://i215.photobucket.com/albums/cc219/KaylaAnime/Kawaii%20Stuff/Kawaii%20Wallpapers/KawaiiWallpaper2.jpg", color: "#FFFFFF", transparent: false},
  {name: "flames", navbar: false, background: "http://www.scenicreflections.com/files/Border_of_Flames_Wallpaper_71nq3.jpg", color: "#000", transparent: false},
  {name: "beach", navbar: true, background: "http://images.alphacoders.com/111/111201.jpg", color: "#FFF0E0", transparent: true},
  {name: "sunset", navbar: false, background: "http://www.w8themes.com/wp-content/uploads/2013/09/Sunset-Beaches-Wallpaper.jpg", color: "#FFE3ED", transparent: true},
  {name: "polka dot", navbar: false, background: "http://images2.layoutsparks.com/1/39860/polka-dot-love-black.png", color: "#FFFFFF", transparent: false}
])

User.create!([
  {name: "Harsha", password_digest: "$2a$10$6fgEO8qDnfoZAZ3mE02iT.NQeoQrxYAoOLzGKR05qFp5.IUMv46xa", theme_id: nil},
  {name: "wendy", password_digest: "$2a$10$XPp6h5HGKqk1yAbSXGODqOh4bwXbhBND6aq5iwDiYgZLx0tUBmM1i", theme_id: 3},
  {name: "lucy", password_digest: "$2a$10$wmu2Q5dsYuI1h99DRupTsODWMCgQXTeMjNxfRD.IDnjuzJeQuv3aK", theme_id: 6},
  {name: "erza", password_digest: "$2a$10$qDmLheQz3UPeb2BVf/rdgOGcNckAvlg3pRuI5bTse49tWMz8GYq82", theme_id: 2}
])
