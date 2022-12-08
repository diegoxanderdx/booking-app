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
    end_date: Date.today + 22.days,
    start_time: "6:00 PM",
    end_time: "1:00 AM",
    total_sits: 25000,
    remaining_sits: 0,
    entrance_fee: 150.50
  },
  {
    name:"The cranberrys live at Theather",
    description: "Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert.",
    start_date: Date.today - 9.days,
    end_date: Date.today - 8.days,
    start_time: "6:00 PM",
    end_time: "1:00 AM",
    total_sits: 250,
    remaining_sits: 0,
    entrance_fee: 180.50
  },
  {
    name:"Curt Cobain live at home",
    description: "Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert.",
    start_date: Date.today + 23.days,
    end_date: Date.today + 23.days,
    start_time: "6:00 PM",
    end_time: "11:00 PM",
    total_sits: 20,
    remaining_sits: 0,
    entrance_fee: 450.50
  },
  {
    name:"Jim Morrison live at Stadium",
    description: "Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert. Dummy description for this concert.",
    start_date: Date.today - 7.days,
    end_date: Date.today - 6.days,
    start_time: "6:00 PM",
    end_time: "1:00 AM",
    total_sits: 25000,
    remaining_sits: 0,
    entrance_fee: 150.50
  },
])

puts "Events created"