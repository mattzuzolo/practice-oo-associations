require 'pry'
# require_relative './console.rb'

class Venue

  attr_accessor :title, :city

  ALL = []

  def initialize(title, city)
    @title = title
    @city = city
    ALL << self
  end

  def self.all
    ALL
  end

  def concerts
    # lists all the concerts that have ever been performed in that venue
    Concert.all.select do |concert|
      self.title == concert.venue.title
    end
  end

  def bands
    #lists all the bands that have ever played in that venue
    self.concerts.map do |concert|
      concert.band
    end

  end


end
