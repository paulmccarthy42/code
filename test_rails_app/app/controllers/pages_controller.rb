class PagesController < ApplicationController
  def print_hello_world
    render json: "Hello world"
  end

  def list_starters
    render json: {:generation_1 => ["Bulbasaur", "Charmander", "Squirle"]}
  end

  def podcasts
    render json: {
      crooked_media: [
        :pod_save_america,
        :pod_save_the_world,
        :pod_save_the_people,
        :lovett_or_leave_it
        ],
      vox_media: [
        :the_impact,
        :the_weeds]
      }
  end

  def get_movies
    render html: "<p>Hello</p><p>World</p>"
  end
end
