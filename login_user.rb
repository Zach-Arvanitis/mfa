require "json"
require "digest/md5"

f = File.new("data_records.txt", "r")
json_string = f.read
data = JSON.parse(json_string)
f.close

puts "email?"
email = gets.chomp
record = data[email]
if record == nil
  puts "No Match!"
  exit
else
  puts "Match"
end

f = File.new("data_records.txt", "r")
json_string = f.read
data = JSON.parse(json_string)
f.close

puts "password?"
password = gets.chomp
if password == record["password"]
  puts "Match"
else
  puts "No match "
  exit
end

f = File.new("data_records.txt", "r")
json_string = f.read
data = JSON.parse(json_string)
f.close

puts "Least Favorite color?"
hash = gets.chomp.downcase
if hash == record["least_favorite_color"]
  puts "Match"
else
  puts "No match "
  exit
end

f = File.new("data_records.txt", "r")
json_string = f.read
data = JSON.parse(json_string)
f.close

puts "favorite musician?"
hash = gets.chomp.downcase
if hash == record["favorite_musician"]
  puts "Match"
else
  puts "No match "
  exit
end

f = File.new("data_records.txt", "r")
json_string = f.read
data = JSON.parse(json_string)
f.close

puts "best human being?"
hash = gets.chomp.downcase
if hash == record["best_human_being"]
  puts "Match"
else
  puts "No match "
  exit
end

f = File.new("data_records.txt", "r")
json_string = f.read
data = JSON.parse(json_string)
f.close

puts "Favorite Class?"
hash = gets.chomp.downcase
if hash == record["favorite_class"]
  puts "Match"
else
  puts "No match "
  exit
end

f = File.new("data_records.txt", "r")
json_string = f.read
data = JSON.parse(json_string)
f.close

puts "Favorite president?"
hash = gets.chomp.downcase
if hash == record["favorite_president"]
  puts "Match. Login complete."
else
  puts "No match "
  exit
end