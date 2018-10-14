class LocalAreaMeetups::Meetup
  attr_accessor :group_name, :group_location, :url, :member_count, :group_status

  @meetup_meetups = []

  def self.category_meetups
    self.scrape_meetups
  end

  def self.scrape_outdoor_meetups
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/outdoors-adventure/"))
    i = 0
    while i < 6
      outdoor_meetup = self.new
      outdoor_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      outdoor_meetup.url = "https://www.meetup.com/find/outdoors-adventure"
      @meetup_meetups << outdoor_meetup
      i += 1
    end
  end

  def self.scrape_tech_meetups
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/tech"))
    i = 0
    while i < 6
      tech_meetup = self.new
      tech_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      tech_meetup.url = "https://www.meetup.com/find/tech"
      @meetup_meetups << tech_meetup
      i += 1
    end
  end

  def self.scrape_family_meetups
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/parents-family"))
    i = 0
    while i < 6
      family_meetup = self.new
      family_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      family_meetup.url = "https://www.meetup.com/find/parents-family"
      @meetup_meetups << family_meetup
      i += 1
    end
  end

  def self.scrape_health_and_wellness
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/health-wellness"))
    i = 0
    while i < 6
      health_meetup = self.new
      health_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      health_meetup.url = "https://www.meetup.com/find/health-wellness"
      @meetup_meetups << health_meetup
      i += 1
    end
  end

  def self.scrape_learning_meetups
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/education"))
    i = 0
    while i < 6
      learning_meetup = self.new
      learning_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      learning_meetup.url = "https://www.meetup.com/find/education"
      @meetup_meetups << learning_meetup
      i += 1
    end
  end

  def self.scrape_sports_and_fitness
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/sports-fitness"))
    i = 0
    while i < 6
      sports_meetup = self.new
      sports_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      sports_meetup.url = "https://www.meetup.com/find/sports-fitness"
      @meetup_meetups << sports_meetup
      i += 1
    end
  end

  def self.scrape_photograpy
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/photography"))
    i = 0
    while i < 6
      photography_meetup = self.new
      photography_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      photography_meetup.url = "https://www.meetup.com/find/photography"
      @meetup_meetups << photography_meetup
      i += 1
    end
  end

  def self.scrape_food
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/food"))
    i = 0
    while i < 6
      food_meetup = self.new
      food_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      food_meetup.url = "https://www.meetup.com/find/food"
      @meetup_meetups << food_meetup
      i += 1
    end
  end

  def self.scrape_writing
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/writing"))
    i = 0
    while i < 6
      writing_meetup = self.new
      writing_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      writing_meetup.url = "https://www.meetup.com/find/writing"
      @meetup_meetups << writing_meetup
      i += 1
    end
  end
end
