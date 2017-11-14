require "unirest"

response = Unirest.get("http://localhost:3000/bottles")

puts response.body