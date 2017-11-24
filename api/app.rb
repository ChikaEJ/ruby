require 'net/http'
require 'json'

base_uri = 'http://jsonplaceholder.typicode.com'
posts_uri = URI(base_uri + "/posts")
result = Net::HTTP.get(posts_uri)
posts = JSON.parse(result)
p posts
posts.each do |post|
  puts post["title"]  + " " + post[]
end