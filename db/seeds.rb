# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Hike.delete_all
Comment.delete_all

locations = {
    "..name.." => {
        :difficulty => x,
        :distance => x,
        :best_season => x,
        :trail_use => x,
        :notes => x
    },
}