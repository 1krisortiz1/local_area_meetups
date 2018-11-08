class LocalAreaMeetups::Category
  attr_accessor :name, :meetups
  #Category.all = all the cateogory
  @@all = []

  def initialize(name)
    @meetups = []
    @name = name
    @url = url
  end

  def self.all
    @@all << self
  end

  def add_meetups(category)
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups(self)
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("tech")
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("parents-family")
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("health-wellness")
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("education")
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("sports-fitness")
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("photography")
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("food")
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("writing")
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("language")
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("music")
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("movements")
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("lgbtq")
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("film")
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("games-sci-fi")
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("beliefs")
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("arts-culture")
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("book-clubs")
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("dancing")
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("pets")
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("hobbies-crafts")
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("fashion-beauty")
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("social")
    @meetups << LocalAreaMeetups::Scraper.scrape_meetups("career-business")
    @@all << @meetups
    binding.pry
  end
end
