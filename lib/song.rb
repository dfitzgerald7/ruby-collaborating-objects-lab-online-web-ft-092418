require "pry"
class Song 
  attr_accessor :name, :genre, :artist 
  
  def initialize(name)
    self.name = name 
  end 
  
  def self.new_by_filename(file_name)
   # binding.pry
    name_arr = file_name.split(" - ")
    
    temp_artist = name_arr[0]
    temp_name = name_arr[1]
    temp_genre = name_arr[2][0...-4]
    #binding.pry
    self.new(temp_name).tap {|song| song.artist = Artist.find_or_create_by_name(temp_artist)}
  end 
  
end 