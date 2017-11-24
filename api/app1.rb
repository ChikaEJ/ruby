require 'net/http'
require 'json'

base_uri = 'http://jsonplaceholder.typicode.com'
posts_uri = URI(base_uri + "/posts")
params = {
    'user_id' => '11'
}
result = Net::HTTP.post_form(posts_uri, params)
p result.body