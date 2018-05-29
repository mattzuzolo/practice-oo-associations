require 'pry' 
# require_relative './console.rb'

class Concert

    attr_accessor :date, :band, :venue

    ALL = []

    def initialize(date, band, venue)
      @date = date
      @band = band
      @venue = venue
      ALL << self
    end

    def self.all
      ALL
    end

    def hometown_show?
      self.venue.city == self.band.hometown
    end

    # def band
    #   #return the band and venue associated to the Concert
    #   #handled by attr_accessor
    # end
    #
    # def venue
    #   #return the band and venue associated to the Concert
    #   #handled by attr_accessor
    # end

end
