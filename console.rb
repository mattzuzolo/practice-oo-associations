require 'pry'

#why did moving these into a different order change things?
#

require_relative './concert.rb'
require_relative './band.rb'
require_relative './venue.rb'
#
# require_relative 'venue'
# require_relative 'concert'
# require_relative 'band'




bb = Band.new("The Beastie Boys", "Brooklyn")
beat = Band.new("The Beatles", "Liverpool")
springsteen = Band.new("Bruce Springsteen", "Asbury Park")
sufjan = Band.new("Sufjan Stevens", "Michigan")
kinks = Band.new("The Kinks", "London")

bowery = Venue.new("Bowery Ballroom", "NYC")
bk = Venue.new("Barclays Center", "Brooklyn")
td = Venue.new("TD Garden", "Boston")
la = Venue.new("Staples Center", "LA")
chicago = Venue.new("United Center", "Chicago")
bronx = Venue.new("Yankee Stadium", "Bronx")


sufjan_bowery = Concert.new("April 4", sufjan, bowery)
springsteen_bowery = Concert.new("April 25", springsteen, bowery)
kinks_bronx = Concert.new("April 29", kinks, bronx)
bb_boston = Concert.new("March 3", bb, td)
bb_la = Concert.new("March 7", bb, la)
bb_bowery = Concert.new("October 3", bb, bowery)
bb_bronx = Concert.new("November 3", bb, bronx)
bb_bk = Concert.new("Oct 1", bb, bk)

bb.play_in_venue(bowery, "December 2")
bb.play_in_venue(td, "January 3")
bb.play_in_venue(la, "January 5")
bb.play_in_venue(chicago, "april 11")
bb.play_in_venue(bronx, "july 22")


hi = 'hello'


binding.pry

true
