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
    "Bayside trail" => {
        :difficulty => "Moderately Easy",
        :distance => "3 miles",
        :best_season => "All-Year",
        :trail_use => "Good for kids",
        :notes => "Easy terrain, well-marked path."
    },
    "Batiquitos Lagoon" => {
        :difficulty => "Easy",
        :distance => "2.8 miles",
        :best_season => "All-Year",
        :trail_use => "Good for kids, dogs allowed",
        :notes => "Easy terrain, well-marked path."
    },
    "Mission Trails Regional Park" => {
        :difficulty => "Easy to Intermediate",
        :distance => "Varies",
        :best_season => "All-Year, October - June for some park areas",
        :trail_use => "Most trails are dog and kid friendly, some trails for mountain bikers.",
        :notes => "Consists of many trails, features of the park are mountain biking, rock climbing, as well as day hiking."
    },
    "Del Dios Highlands Preserve Trail" => {
        :difficulty => "Moderately Strenuous",
        :distance => "2.5 miles",
        :best_season => "November - May",
        :trail_use => "Dog Friendly",
        :notes => "Easy terrain, well-marked path."
    },
    "Stonewall Peak Trail" => {
        :difficulty => "Intermediate",
        :distance => "4.4 miles",
        :best_season => "All-Year, may close in winter months if too much snow",
        :trail_use => "Good for kids",
        :notes => "Well marked path, $8 day pass required for parking at Ranger station."
    },
    "Volcan Mountain Preserve Trail" => {
        :difficulty => "Intermediate",
        :distance => "3 miles",
        :best_season => "October - June",
        :trail_use => "Good for horseback riding.",
        :notes => "Well-marked paths, 1,300 elevation gain."
    },
    "Miramar Resevoir Loop" => {
        :difficulty => "Easy",
        :distance => "4.9 miles",
        :best_season => "All-Year",
        :trail_use => "Good for kids, dog friendly",
        :notes => "Easy terrain, well-marked path. Scattered picnic areas with BBQ pits."
    },
}

locations.each do |name, location_hash|
    l = Hike.new
    l.name = name
    location_hash.each do |attribute, value|
        l[attribute] = value
    end
    l.save
end

comments = {
    "Todd Howard" => {
        :content => "Gorgeous views all along this hike.",
        :hike_id => 1
    },
    "Mike Bell" => {
        :content => "My family enjoyed this hike.",
        :hike_id => 2
    },
    "Todd Sweeney" => {
        :content => "Beautiful place to picnic by the ocean.",
        :hike_id => 1
    }
}

comments.each do |name, comment_hash|
    c = Comment.new
    c.user_name = name
    comment_hash.each do |attribute, value|
        c[attribute] = value
    end
    c.save
end