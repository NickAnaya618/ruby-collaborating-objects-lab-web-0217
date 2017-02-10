class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    found = @@all.find do |artist_ojects|
        artist_ojects.name == name
    end

    if found
      found
    else
      Artist.new(name)
    end
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each do |song|
      puts "#{song.name}"
    end
  end

end
