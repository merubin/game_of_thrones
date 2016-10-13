# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Character.destroy_all
House.destroy_all

house1 = House.create!({
  name: "Arryn",
  lord: "Robin Arryn",
  region: "The Vale of Arryn",
  description:"House Arryn is the principle house in the Vale and is seated in a small castle called the Eyrie, which is located at the top of a mountain. Jon Arryn, the head of the house, served King Robert as Hand of the King; Jon was poisoned shortly before Game of Thrones begins, which prompts Robert to ask Ned Stark to become Hand of the King. Now, Jon’s only son Robert is Lord of the Eyrie, with his mother Lysa acting as regent. House Arryn’s coat of arms is white moon and falcon on blue, and its motto is 'As High as Honor.'",
  img_url:"http://vignette4.wikia.nocookie.net/gameofthrones/images/1/15/House-Arryn-Main-Shield.PNG/revision/latest?cb=20160312101451",

})

house1.characters.create!({
  name: "Jon Arryn",
  portrayed_by: "John Standing",
  img_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/8/8a/Lord_Jon_Arryn.png/revision/latest?cb=20161001143939",
  seasons: "1",
  first_seen: "Winter is Coming" ,
  status: "Deceased"
})

house1.characters.create!({
  name: "Lysa Arryn",
  portrayed_by: "Kate Dickie",
  img_url: "http://vignette3.wikia.nocookie.net/gameofthrones/images/4/46/LysaArryn.png/revision/latest?cb=20140523133128",
  seasons: "1, 4",
  first_seen: "The Wolf and the Lion",
  status: "Deceased"
})


house1.characters.create!({
  name: "Robin Arryn",
  portrayed_by: "Lino Faciol",
  img_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/7/74/Robin_Aaryn_Book_of_Stranger.jpg/revision/latest?cb=20160714005525",
  seasons: "1, 4, 5, 6",
  first_seen: "The Wolf and the Lion",
  status: "Alive"
})
