require 'open-uri'
require 'nokogiri'
require 'pry'

require_relative  "./local_area_meetups/version"
require_relative  './local_area_meetups/meetups'
require_relative  './local_area_meetups/cli'

class LocalAreaMeetups

  def get_page(https://www.meetup.com/)
    doc = Nokogiri::HTML(open(https://www.meetup.com/))
 binding.pry
    scraped_categories = []

  end
end
