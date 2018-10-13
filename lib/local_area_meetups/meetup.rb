class LocalAreaMeetups::Meetup
  attr_accessor :name, :group_name, :meetup_location, :meetup_date_and_time, :url, :going_count

  def self.category_meetups
    self.scrape_meetups
  end

  def self.scrape_meetups
    meetup = []

    meetup << self.scrape_hiking_hikers_hiking_group
    meetup << self.scrape_global_bikes_meetup
    meetup << self.scrape_trail_mix_hiking
    meetup << self.scrape_twenties_and_thirties_hikers_meetup
    meetup << self.scrape_performance_great_ride
    meetup << self.scrape_phoenix_beginner_hiking
    meetup << self.scrape_take_a_hike
    meetup << self.scrape_a_little_off_the_beaten_path

    meetup
  end
  #  meetup_1 = self.new
  #  meetup_1.name = "Amazing Must See Canyon Autumn Colors - Payson"
  #  meetup_1.group_name = "Hiking Hikers Hiking Group"
  #  meetup_1.meetup_location = "Target Fountain Hills"
  #  meetup_1.meetup_date_and_time = "Oct 13 - 6 AM to 2 pm"
  #  meetup_1.url = "https://www.meetup.com/threeh/events/253952528/"

  def self.scrape_hiking_hikers_hiking_group
    doc = Nokogiri::HTML(open("https://www.meetup.com/threeh"))
    binding.pry
    meetup = self.new
    meetup.name =
    meetup.group_name =
    meetup.location =
    meetup.date_and_time =
    meetup.going_count =
    meetup.url = "https://www.meetup.com/find/outdoors-adventure"
    meetup.group_description =

    meetup
  end


#  end

#end
