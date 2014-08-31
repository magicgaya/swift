movies = {
    Memento: 3,
    Primer: 4,
    Ishtar: 1
    }

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
when 'add'
    puts "What movie do you want to add?"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "What's the rating? (Type a number 0 to 4.)"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} has been added with a rating of #{rating}."
    else
        puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
    end
when 'update'
    puts "What movie do you want to update?"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Movie not found!"
    else
        puts "What's the new rating? (Type a number 0 to 4.)"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} has been updated with new rating of #{rating}."
    end
when 'display'
    movies.each do |movie, rating|
        puts "#{movie}: #{rating}"
    end
when 'delete'
    puts "What movie do you want to delete?"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Movie not found!"
    else
        movies.delete(title.to_sym)
        puts "#{title} has been removed."
    end
else
    puts "Sorry, I didn't understand you."
end


ruby_is_eloquent = true
ruby_is_ugly = false

puts "Ruby is eloquent!" if ruby_is_eloquent
puts "Ruby's not ugly!" unless ruby_is_ugly

10.times {puts "Hello!"} if 4 < 5
10.times {puts "Hello!"} unless 5 < 4
puts 3 < 4 ? "3 is less than 4!" : "3 is not less than 4."

puts "Hello there!"
greeting = gets.chomp

case greeting
when "English" then puts "Hello!"
when "French" then puts "Bonjour!"
when "German" then puts "Guten Tag!"
when "Finnish" then puts "Haloo!"  
else puts "I don't know that language!"
end

favorite_language = nil
puts favorite_language      # nil
favorite_language ||= "english"
puts favorite_language      #english
favorite_language ||= "french"
puts favorite_language      #english
favorite_language = "spanish"
puts favorite_language      #spanish

def multiple_of_three(n)
  n % 3 == 0 ? "True" : "False"
end
puts  multiple_of_three(11)
    
def a
  puts "A was evaluated!"
  return true
end

def b
  puts "B was also evaluated!"
  return true
end

puts a || b
puts "------"
puts a && b
    
95.upto(100) { |num| print num, " " }
"L".upto("P") { |lett| puts lett }
    
[1, 2, 3].respond_to?(:push)        # true
[1, 2, 3].respond_to?(:to_sym)      # false
age = 26
age.respond_to?(:next)          # true
    
alphabet = ["a", "b", "c"]
alphabet << "d"

caption = "A giraffe surrounded by "
caption << "weezards!"
    
age = 26
"I am " + age.to_s + " years old."
"I am " << age.to_s << " years old."   
    
