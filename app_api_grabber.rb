require "unirest"

response = Unirest.get("http://localhost:3000/view")

puts response.body