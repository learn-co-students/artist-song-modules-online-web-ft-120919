require 'pry'

class Artist

  extend Memorable 
  extend Findable 
  include Paramable 

  attr_accessor :name #why isnt this called under initialize 
  attr_reader :songs  #why isnt this under accessor 

  @@artists = []

  def initialize #why is songs not called in as arg parameter here 
    @@artists << self
    @songs = []
  end

  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end


  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
