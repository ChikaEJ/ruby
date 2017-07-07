# gem install json
require "json"
some_json = '{"orenge": 20, "apple": {"red":12, "green": 42}}'

parse_json = JSON.parse(some_json)
