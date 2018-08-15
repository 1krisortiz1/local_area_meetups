class LocalAreaMeetups::Meetups
  attr_accessor :group_name, :date_time, :url, :location

 def self.info
   self.scrape_meetups
 end

 def self.scrape_meetups
   meetups = []

   meetups << self.scrape_meetups

   meetups
 end

 def self.scrape_meetups
   doc = Nokogiri::HTML(open("https://meetup.com"))
   binding.pry
 end
end
