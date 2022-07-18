user1 = User.create(username: "Swislok")
user1.guitars.create(style: "Electric", brand: "Gibson", model: "Les Paul Standard", image_url: "https://c1.zzounds.com/media/productmedia/fit,600by800/quality,85/1_Full_Straight_Front_40878-415561e4d53a9ab83db782d02d3487bf.jpg")


puts "SEEDED"