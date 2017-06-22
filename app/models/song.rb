require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
      # drake = Artist.find_by_name("Drake")
      # binding.pry
      # puts Artist.all
      # # drake.songs << self
      drake = Artist.create(name: "Drake")
      drake.songs << self
      drake
  end
end
