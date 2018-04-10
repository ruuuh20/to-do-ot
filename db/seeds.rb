# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Activity1 = Activity.create(:title => "Therapy putty", :description => "Hand-strengthening", "directions" => "Play with putty", "schedule" => "Daily", :link => "www.amazon.com" )
Activity2 = Activity.create(:title => "Cooking appliances", :description => "occupational engagement practice", "directions" => "Prepare a food list and practice with cooking appliances", "schedule" => "Once a week", :link => "www.amazon.com" )
Activity3 = Activity.create(:title => "Handwriting", :description => "Developmental, fine motor movement", "directions" => "Practice writing exercises", "schedule" => "Daily", :link => "www.amazon.com" )
Activity4 = Activity.create(:title => "Balance Ball", :description => "balance", "directions" => "Work with balance equipment with assistance", "schedule" => "Twice a week", :link => "www.amazon.com" )
Activity5 = Activity.create(:title => "Building blocks", :description => "play-based", "directions" => "Assist child with blocks", "schedule" => "Daily", :link => "www.amazon.com" )
Activity6 = Activity.create(:title => "Leg stretches", :description => "Leg-strengthening", "directions" => "Leg exercises", "schedule" => "Daily", :link => "www.amazon.com" )
