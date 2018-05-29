require 'pry'
# require_relative './console.rb'

class Band

    attr_accessor :name #band should be able to change name
    attr_reader :hometown #reader because you wouldn't want that to change

    ALL = []

    def initialize(name, hometown)
      @name = name
      @hometown = hometown
      ALL << self
    end

    def self.all
      ALL
    end

    #use venue object
    def play_in_venue (venue_location, date)
      #takes a venue and date as a string as arguments and associates the band to that venue
      Concert.new(date, self, venue_location)
    end

    def concerts
      #return an array of all that band's concerts
      Concert.all.select do |concert|
        #binding.pry
        concert.band == self
      end
    end

    def venues
      self.concerts.select do |concert|
        concert.venue
      end
    end

    def self.all_introductions
      #puts out a message of "Hello, we are {insert band name here} and we're from {insert hometown here}" for each band
      self.all.each do |band|
        puts "Hello, we are #{band.name} and we're from #{band.hometown}!"
      end
    end



end
