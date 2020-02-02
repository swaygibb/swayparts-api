# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
parts_list = [
    ["Fuel Pump", "Steve Gibbs"],
    ["Gas Line", "Steve Gibbs"],
    ["Front Tire", "Steve Gibbs"],
    ["Oil Filter", "Steve Gibbs"]
]

parts_list.each do |title, created_by|
    @part = Part.create(title: title, created_by: created_by)
    @part.items.create(name: "Utility")
    @part.items.create(name: "Vital")
    @part.items.create(name: "Frequent Maintenance")
end