class LocalAreaMeetups::Meetups
  attr_accessor :group_name, :date_time, :event_name, :location

 def self.all
   self.scrape_meetups
 end

 def self.scrape_meetups
   meetups = []
   meetups << self.scrape_events
   meetups
 end

 def self.scrape_events
   doc = Nokogiri::HTML(open("https://meetup.com/find/"))
   #binding.pry

   event = self.new
   #event.event_name
   event.group_name = doc.search("h3.padding-none").text.delete(" \t\n")
   #event.date_time = doc.search("p.eventCard-dateTime").text
   #event.location

   event
 end
end
