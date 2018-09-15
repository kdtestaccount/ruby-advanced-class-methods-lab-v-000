class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    new_song = Song.new
    @@all << new_song
    new_song
  end

  def self.new_by_name(song_name)
    new_song = Song.new
    new_song.name = song_name
    @@all << new_song
    # puts "@@all array: #{@@all}"
    found_song = Song.all.find{|song| song.name == song_name}
    found_song
  end 

  def self.create_by_name(song_name)
    new_song = Song.new
    new_song.name = song_name
    @@all << new_song
    # puts "@@all array: #{@@all}"
    found_song = Song.all.find{|song| song.name == song_name}
    found_song
  end 
  
  def self.find_by_name(song_name)
    found_song = Song.all.find{|song| song.name == song_name}
    found_song
  end
  
  def self.find_or_create_by_name(song_name)
    song_found = Song.find_by_name(song_name) 
    if song_found == nil
      Song.create_by_name(song_name)
    else 
      song_found
    end
  end
  
  def self.alphabetical
    song_list Song.all.sort_by { |word| word.downcase }
    # Song.all.each do |song|
    puts "#{person.name}"
  end
  
  
  
  
end




