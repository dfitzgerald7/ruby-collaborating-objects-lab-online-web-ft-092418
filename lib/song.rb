require "pry"
class Song 
  attr_accessor :name, :genre
  attr_reader :artist 
  
  def initialize(name)
    self.name = name 
  end 
  
  def artist=(artist)
    artist.songs << self
  end 
  
  def self.new_by_filename(file_name)
   # binding.pry
    name_arr = file_name.split(" - ")
    #binding.pry
    artist = name_arr[0]
    name = name_arr[1]
    genre = name_arr[2][0...-4]
  end 
  
end 