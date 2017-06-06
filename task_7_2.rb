movies = {
  "Interstellar" => {
    "John" => 10,
    "Jack" => 8
  },
    "Doom" => {
      "Bob" => 8,
      "John" => 5
    },
    "Tor" => {
      "Jack" => 10,
      "Chika" => 10
    }
  }

def find_movie(movies, name_of_movie)
    if movies.key?(name_of_movie)
      return movies[name_of_movie]
    end
  return nil
end

def input_text
  print ">"
  input = gets.chomp
  return input
end

def averange_rating(movie)
  amount_of_rates = 0.0
  averange_rating = 0
  movie.each_key do |rate|
    amount_of_rates = amount_of_rates + movie[rate]
  end
  averange_rating = (amount_of_rates/(movie.size)).round(1)
end

loop do
  p "Please enter command (add, rate, list, find, exit, delete, sort)"
  command = input_text

  case command
  when "find"
    p "What movie do you want to find?"
    movie_name = input_text.capitalize
    found_movie = find_movie(movies, movie_name)
    if found_movie.nil?
      p "Movie does not exist!"
    else
      p "#{movies.key(found_movie)} ratings"
      print "\n"
      found_movie.each_key do |name|
        p "#{name} rated it  #{found_movie[name]}"
      end
      p "Average rating for the #{movies.key(found_movie)} is #{averange_rating(found_movie)}"
      print "\n"
    end
  when "list"

     movies.each do |movie, ratings|

        if ratings.empty?
         p "Ratings is not yet available for #{movie}"
        else
         print "#{movie} is rated #{averange_rating(movies[movie])}\n"
         p "---------------------------------------------"
        end
     end

  when "add"

    p "Please enter movie"
    new_movie = input_text.capitalize
    movies.store(new_movie, Hash.new)
    p "New movie was successful added"

  when "rate"

    p "What movie do you want to rate?"
    name_of_movie = input_text.capitalize
    find_movie = find_movie(movies, name_of_movie)
    if find_movie.nil?
      p "Movie not found!"
    else
      p "Please enter your name?"
      name = input_text
      p "Please rate #{movies.key(find_movie)} (1..10)"
      rate_of_movie = input_text.to_i
      if rate_of_movie <= 10 && rate_of_movie > 0
        find_movie.store(name, rate_of_movie)
        p "A rating has been added for #{movies.key(find_movie)}: #{name} rated is #{rate_of_movie}"
      else
        p "Incorrect number(1..10)"
      end
    end

  when "sort"

    new_hash = {}
    movies.each do |movie, rating|
      if rating.empty?
        rating = {"nil" => 0}
        new_hash.store(movie, averange_rating(rating))
      else
      new_hash.store(movie, averange_rating(rating))
      end
    end

    sorted_hash = new_hash.sort_by { |movie, rating| rating }.reverse.to_h
    sorted_hash.each do |movie, rating|
    p "#{movie} #{rating}"
    end

  when "delete"
    p "Which movie do you want to delete?"
    delete_movie = input_text.capitalize
    movies.delete(delete_movie) do |movie|
      p "#{movie} does not exist!"
    end
    p "#{delete_movie} is deleted!"

  when "exit"

    p "Bey!!!"
    break
  else
    p "Wrong command!!!"
  end
end
