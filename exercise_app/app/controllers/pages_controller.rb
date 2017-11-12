class PagesController < ApplicationController
  $count = 0

  def display_fortune
    fortunes = ["You fucked", "lol bye", "$1000000 dollars. Right now. For you."]
    render json: fortunes[rand(fortunes.length)]
  end

  def random_numbers
    render json: [rand(1..60), rand(1..60), rand(1..60), rand(1..60), rand(1..60), rand(1..60)]
  end

  def view_counter
    $count += 1
    render json: $count
  end

  def display_bottles
    song = ""
    bottles = 99
    99.times do 
      song += """#{bottles} bottle#{bottles == 1 ? "" : "s"} of beer on the wall.
#{bottles} bottle#{bottles == 1 ? "" : "s"} of beer.
Take one down and pass it around
"""
      bottles -= 1
      song += "#{bottles == 0 ? "No" : bottles} bottle#{bottles == 1 ? "" : "s"} of beer on the wall"
      song += "\n\n"
    end
    render json: song
  end
end
