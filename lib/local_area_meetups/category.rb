class LocalAreaMeetups::Category
    attr_accessor :name, :url, :meetups

    @@all = []

    def initialize(name, url)
      @url = url
      @name = name
      @meetups = []
    end

    def add_meetup(meetup)
      @meetups << meetup
      meetup.category = self if meetup.category != self
    end

  def self.all
    @@all
  end

  def save #instance method
    @@all << self
  end

  def self.find_by_name(name)
    self.all.detect{|o| o.name == name}
  end

  ##def add_meetups(category)
  #@meetups << LocalAreaMeetups::Scraper.scrape_meetups("outdoors-adventure")
    #@meetups << LocalAreaMeetups::Scraper.scrape_meetups("tech")
#    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("parents-family")
#    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("health-wellness")
    #@meetups << LocalAreaMeetups::Scraper.scrape_meetups("education")
    #@meetups << LocalAreaMeetups::Scraper.scrape_meetups("sports-fitness")
    #@meetups << LocalAreaMeetups::Scraper.scrape_meetups("photography")
    #@meetups << LocalAreaMeetups::Scraper.scrape_meetups("food")
#    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("writing")
    #@meetups << LocalAreaMeetups::Scraper.scrape_meetups("language")
    #@meetups << LocalAreaMeetups::Scraper.scrape_meetups("music")
    #@meetups << LocalAreaMeetups::Scraper.scrape_meetups("movements")
    #@meetups << LocalAreaMeetups::Scraper.scrape_meetups("lgbtq")
    #@meetups << LocalAreaMeetups::Scraper.scrape_meetups("film")
    #@meetups << LocalAreaMeetups::Scraper.scrape_meetups("games-sci-fi")
    #@meetups << LocalAreaMeetups::Scraper.scrape_meetups("beliefs")
    #@meetups << LocalAreaMeetups::Scraper.scrape_meetups("arts-culture")
    #@meetups << LocalAreaMeetups::Scraper.scrape_meetups("book-clubs")
    #@meetups << LocalAreaMeetups::Scraper.scrape_meetups("dancing")
    #@meetups << LocalAreaMeetups::Scraper.scrape_meetups("pets")
    #@meetups << LocalAreaMeetups::Scraper.scrape_meetups("hobbies-crafts")
    #@meetups << LocalAreaMeetups::Scraper.scrape_meetups("fashion-beauty")
    #@meetups << LocalAreaMeetups::Scraper.scrape_meetups("social")
    #@meetups << LocalAreaMeetups::Scraper.scrape_meetups("career-business")
    #@@all << @meetups
    #binding.pry
  #end
end
