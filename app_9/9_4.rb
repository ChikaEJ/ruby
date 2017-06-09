movies = [
{
  title: "Misery",
  rating: 8.5
},
{
  title: "Psycho",
  rating:
},
{
  title: "Friday the 13th"
  rating: 6.3
},
{
  title: "Brave Heart",
  rating: 10
}
]
movies.sort! do |first, second|
  first[:rating] <=> second[:rating]
end
movies.reverse!
p movies.to_s
