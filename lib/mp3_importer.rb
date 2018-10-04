class Mp3Importer
  
  attr_accessor :path, :files 
  
  def initialize(filepath)
    self.path = filepath
    self.files = Dir.entries(path)
    self.files.delete_if {|file| file == "." || file == ".."}
  end 
  
  def self.files 
    
  end 
  
  def self.import 
    
  end 
  
end 
  
  