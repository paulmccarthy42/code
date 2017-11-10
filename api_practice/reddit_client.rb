require "unirest"

response = Unirest.get("https://www.reddit.com/r/aww/.json")
body = response.body

threads = body["data"]["children"]

while true
  system "clear"
  index = 0
  threads.length.times do
    puts "#{index}. #{threads[index]["data"]["title"]}"
    index = index + 1
  end
  print "Please enter the number of the thread you want: "
  input_thread = gets.chomp.to_i

  response = Unirest.get("https://www.reddit.com#{threads[input_thread]["data"]["permalink"]}.json")
  comment_data = response.body


  outer_hash_of_comments = comment_data[1]["data"]["children"]



  index = 0
  outer_hash_of_comments.each do |x|
    p x["data"]["body"]
    puts
    index = index + 1
    if index == 5
      break
    end
  end

  puts "Press q to exit"
  input = gets.chomp
  if input == "q"
    break
  end
end
