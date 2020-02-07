class Artist 
  
  @@all = []
  
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name 
    save
  end 
  
  def self.all
    @@all
  end 
  
  def add_songs(song)
    song.artist = self 
  end 
  
  def songs 
    Song.all.select{|song| song.artist == self }
  end 
  
  def self.find_or_create_by_name
    