# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Events are being created"

events = Event.create([
  {
    name:"Michael Jackson live at Stadium",
    description: "Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert.",
    start_date: Date.today + 2.days,
    end_date: Date.today + 3.days,
    start_time: "6:00 PM",
    end_time: "1:00 AM",
    total_sits: 25000,
    remaining_sits: 0,
    entrance_fee: 180.7
  },
  {
    name:"Freddy Mercury live at Home",
    description: "Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert.",
    start_date: Date.today + 3.days,
    end_date: Date.today + 3.days,
    start_time: "4:00 PM",
    end_time: "11:00 PM",
    total_sits: 15,
    remaining_sits: 0,
    entrance_fee: 420.80
  },
  {
    name:"David Bowie live at Theater",
    description: "Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert.",
    start_date: Date.today + 25.days,
    end_date: Date.today + 26.days,
    start_time: "6:00 PM",
    end_time: "1:00 AM",
    total_sits: 280,
    remaining_sits: 0,
    entrance_fee: 195.7
  },
  {
    name:"Curt Cobain live at Stadium",
    description: "Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert.",
    start_date: Date.today + 21.days,
    end_date: Date.today + 21.days,
    start_time: "6:00 PM",
    end_time: "1:00 AM",
    total_sits: 25000,
    remaining_sits: 0,
    entrance_fee: 150.50
  },
])

puts "Events created"