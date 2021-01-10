# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


mining_types = [
  {
    description: "Proof of Work",
    acronym: "PoW"
  },
  {
    description: "Proof of Stake",
    acronym: "PoS"
  },
  {
    description: "Proof of Capacity",
    acronym: "PoC"
  }
]
mining_types.each do |mining_type|
  MiningType.find_or_create_by!(mining_type)
end

coins = [
  {
    description: "Bitcoin",
    acronym: "BTC",
    image_url: "https://www.comocomprarcriptomoedas.com/wp-content/uploads/2018/02/bitcoin-logo.png",
    mining_type: MiningType.find_by(acronym: "PoW")
  },
  {
    description: "Ethereum",
    acronym: "ETC",
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj4sPvxHepSWg-lkodct5SMVvhJoKVPN3b0Q&usqp=CAU",
    mining_type: MiningType.all.sample
  },
  {
    description: "Dash",
    acronym: "DASH",
    image_url: "https://media.dash.org/wp-content/uploads/dash-d.png",
    mining_type: MiningType.all.sample
  }
]
coins.each do |coin|
  Cryptocoin.find_or_create_by!(coin)
end
