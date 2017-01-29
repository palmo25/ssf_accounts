# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Revenue.create(
  description: "donazione Maratona di Milano",
  amount: 10.00,
  typology: "erogazione liberale"
)

Revenue.create(
  description: "donazione Maratona di Roma",
  amount: 12.50,
  typology: "erogazione liberale"
)

Revenue.create(
  description: "contributo progetto Amica Acqua",
  amount: 8000.00,
  typology: "contributo"
)
