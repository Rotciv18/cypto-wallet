# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cryptocoin.create(
  description: "Bitcoin",
  acronym: "BTC",
  image_url: "https://www.comocomprarcriptomoedas.com/wp-content/uploads/2018/02/bitcoin-logo.png"
)

Cryptocoin.create(
  description: "Ethereum",
  acronym: "ETC",
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj4sPvxHepSWg-lkodct5SMVvhJoKVPN3b0Q&usqp=CAU"
)