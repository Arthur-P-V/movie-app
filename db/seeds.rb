Genre.create!([
  {name: "Drama"},
  {name: "Action"},
  {name: "Documentary"}
])
Actor.create!([
  {first_name: "Margot", last_name: "Robbie", known_for: "The Wolf of Wallstreet", gender: "F", age: 30, movie_id: nil},
  {first_name: "Margot", last_name: "Robbie", known_for: "The Wolf of Wallstreet", gender: "F", age: 30, movie_id: 8},
  {first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock", gender: "M", age: 44, movie_id: 9},
  {first_name: "Ewan", last_name: "Mcgregor", known_for: "Trainspotting", gender: "M", age: 49, movie_id: 10},
  {first_name: "Sacha", last_name: "Baron Cohen", known_for: "Borat", gender: "M", age: 49, movie_id: 11},
  {first_name: "Woody", last_name: "Harrelson", known_for: "Kiss the Ground", gender: "M", age: 59, movie_id: 6},
  {first_name: "Margot", last_name: "Robbie", known_for: "The Wolf of Wallstreet", gender: "F", age: 30, movie_id: 8}
])
Movie.create!([
  {title: "Fantastic Mr. Fox", year: 2009, plot: "Mr. Fox becomes bored of his docile office life and decides to return to his original habit of stealing from farms", director: nil, english: true},
  {title: "Zootopia", year: 2016, plot: "Judy Hopps is an aspiring cop in zootopia who isn't taken seriously because she is a bunny, until she stumbles upon the biggest case in years", director: nil, english: true},
  {title: "Good Will Hunting", year: 1997, plot: "A troubled genius is confronted by his own potential after being discovered by the faculty of the college he is a janitor for", director: nil, english: true},
  {title: "Scott Pilgrim vs The World", year: 2010, plot: "Scott Pilgrim is in love with Ramona Flowers. Ramona Flowers has a complicated romantic past. This means Scott must fight her 7 evil exes to be with her", director: nil, english: true},
  {title: "Kiss the Ground", year: 2020, plot: "A documentary about how sustainable farming can reverse the damage of climate change", director: nil, english: true},
  {title: "The Wolf of Wall Street", year: 2013, plot: "The wolf of wallstreet follows the story of Jordan Belfort, a man who games the stockmarket illegally after he loses his job in a massive stock market crash", director: "Martin Scorsese", english: true},
  {title: "Dr. Strange", year: 2016, plot: "An arrogant surgeon goes on a spiritual and magical adventure after losing his ability to operate as a surgeon", director: nil, english: true},
  {title: "Big Fish", year: 2003, plot: "A son tries to separate fact from fiction in his late fathers stories", director: nil, english: true},
  {title: "Borat", year: 2006, plot: "Kazakh journalist Borat Sagdiyev travels to America to help his country understand how the wealthiest country operates", director: nil, english: true}
])
MovieGenre.create!([
  {genre_id: 1, movie_id: 8},
  {genre_id: 2, movie_id: 9},
  {genre_id: 3, movie_id: 11},
  {genre_id: 3, movie_id: 6}
])
User.create!([
  {name: "oscar", email: "oscar@example.com", password_digest: "$2a$12$a1Nd.kvNp1vcB2EMRC3oeu3vv29ts.CbjIg63H5uV7B4qw4dPtM9O", admin: false},
  {name: "arthur", email: "arthur@example.com", password_digest: "$2a$12$buUb5MG9HYWCnYW7kZbnb..7lhVC1x/Ad8j1SZJ/ZAVAIFFBU7N.S", admin: true}
])
