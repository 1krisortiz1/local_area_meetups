class LocalAreaMeetups::Meetup
  attr_accessor :group_name, :group_location, :url, :member_count, :group_status

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

  def self.scrape_hiking_hikers_hiking_group
    doc = Nokogiri::HTML(open("https://www.meetup.com/threeh/events"))

    meetup = self.new
    meetup.group_name = doc.search("a.groupHomeHeader-groupNameLink").text
    meetup.group_location = doc.search("a.groupHomeHeaderInfo-cityLink").text
    meetup.member_count = doc.search("a.groupHomeHeaderInfo-memberLink").text
    meetup.url = "https://www.meetup.com/find/outdoors-adventure"
    meetup.group_status = doc.search("span.infoToggle-label").text

    meetup
  end

  def self.scrape_global_bikes_meetup
    doc = Nokogiri::HTML(open("https://www.meetup.com/Global-Bikes-Meetup/events"))

    meetup = self.new
    meetup.group_name = doc.search("a.groupHomeHeader-groupNameLink").text
    meetup.group_location = doc.search("a.groupHomeHeaderInfo-cityLink").text
    meetup.member_count = doc.search("a.groupHomeHeaderInfo-memberLink").text
    meetup.url = "https://www.meetup.com/find/outdoors-adventure"
    meetup.group_status = doc.search("span.infoToggle-label").text

    meetup
  end

  def self.scrape_trail_mix_hiking
    doc = Nokogiri::HTML(open("https://www.meetup.com/Trail-Mix-Hiking/events"))

    meetup = self.new
    meetup.group_name = doc.search("a.groupHomeHeader-groupNameLink").text
    meetup.group_location = doc.search("a.groupHomeHeaderInfo-cityLink").text
    meetup.member_count = doc.search("a.groupHomeHeaderInfo-memberLink").text
    meetup.url = "https://www.meetup.com/find/outdoors-adventure"
    meetup.group_status = doc.search("span.infoToggle-label").text

    meetup
  end

  def self.scrape_twenties_and_thirties_hikers_meetup
    doc = Nokogiri::HTML(open("https://www.meetup.com/20s-and-30s-Hikers-Meetup-Phoenix-Az/events"))

    meetup = self.new
    meetup.group_name = doc.search("a.groupHomeHeader-groupNameLink").text
    meetup.group_location = doc.search("a.groupHomeHeaderInfo-cityLink").text
    meetup.member_count = doc.search("a.groupHomeHeaderInfo-memberLink").text
    meetup.url = "https://www.meetup.com/find/outdoors-adventure"
    meetup.group_status = doc.search("span.infoToggle-label").text

    meetup
  end

  def self.scrape_performance_great_ride
    doc = Nokogiri::HTML(open("https://www.meetup.com/Performance-Saturday-Social-Group-Ride/events"))

    meetup = self.new
    meetup.group_name = doc.search("a.groupHomeHeader-groupNameLink").text
    meetup.group_location = doc.search("a.groupHomeHeaderInfo-cityLink").text
    meetup.member_count = doc.search("a.groupHomeHeaderInfo-memberLink").text
    meetup.url = "https://www.meetup.com/find/outdoors-adventure"
    meetup.group_status = doc.search("span.infoToggle-label").text

    meetup
  end

  def self.scrape_phoenix_beginner_hiking
    doc = Nokogiri::HTML(open("https://www.meetup.com/phoenix-beginner-hikers/events"))

    meetup = self.new
    meetup.group_name = doc.search("a.groupHomeHeader-groupNameLink").text
    meetup.group_location = doc.search("a.groupHomeHeaderInfo-cityLink").text
    meetup.member_count = doc.search("a.groupHomeHeaderInfo-memberLink").text
    meetup.url = "https://www.meetup.com/find/outdoors-adventure"
    meetup.group_status = doc.search("span.infoToggle-label").text

    meetup
  end

  def self.scrape_take_a_hike
    doc = Nokogiri::HTML(open("https://www.meetup.com/Take-a-Hike/events"))

    meetup = self.new
    meetup.group_name = doc.search("a.groupHomeHeader-groupNameLink").text
    meetup.group_location = doc.search("a.groupHomeHeaderInfo-cityLink").text
    meetup.member_count = doc.search("a.groupHomeHeaderInfo-memberLink").text
    meetup.url = "https://www.meetup.com/find/outdoors-adventure"
    meetup.group_status = doc.search("span.infoToggle-label").text

    meetup
  end

  def self.scrape_a_little_off_the_beaten_path
    doc = Nokogiri::HTML(open("https://www.meetup.com/A-Little-Off-the-Beaten-Path/events"))

    meetup = self.new
    meetup.group_name = doc.search("a.groupHomeHeader-groupNameLink").text
    meetup.group_location = doc.search("a.groupHomeHeaderInfo-cityLink").text
    meetup.member_count = doc.search("a.groupHomeHeaderInfo-memberLink").text
    meetup.url = "https://www.meetup.com/find/outdoors-adventure"
    meetup.group_status = doc.search("span.infoToggle-label").text

    meetup
  end
end
