require "pry"
class Artist 
  attr_accessor :name, :songs 
  @@all = []
  def initialize(name)
    self.name = name
    self.songs = []
  end 
  
  def add_song(song) 
   # binding.pry
    self.songs << song unless self.songs.include?(song)
  end 
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self
  end 
  
  def self.find_or_create_by_name(name)
    if artist_name = self.all.map{|artist| artist.name}.include?(name)
      artist_name 
    else 
      Artist.new(name)
    end 
  end 
  
  def print_songs 
    self.songs.each{|song| puts song.name}
  end 
end 