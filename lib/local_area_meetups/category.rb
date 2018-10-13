class LocalAreaMeetups::Category
  attr_accessor :name, :url

  def self.categories
    #doc = Nokogiri::HTML(open("https://www.meetup.com"))
    #category_name = doc.search("li.gridList-item").text
    self.scrape_category
  end

  def self.scrape_category
    category = []

    category << self.scrape_outdoor_and_adventures
    category << self.scrape_tech
    category << self.scrape_family
    category << self.scrape_health_and_wellness
    category << self.scrape_learning
    category << self.scrape_sports_and_fitness
    category << self.scrape_photograpy
    category << self.scrape_food_and_drinks
    category << self.scrape_writing
    category << self.scrape_language_and_culture
    category << self.scrape_music
    category << self.scrape_movements
    category << self.scrape_lgbtq
    category << self.scrape_film
    category << self.scrape_scifi_and_games
    category << self.scrape_beliefs
    category << self.scrape_arts
    category << self.scrape_book_clubs
    category << self.scrape_dance
    category << self.scrape_pets
    category << self.scrape_hobbies_and_crafts
    category << self.scrape_fashion_and_beauty
    category << self.scrape_social
    category << self.scrape_career_and_business

    category_1 = self.new
    category_1.name = "Outdoors & Adventure"
    category_1.url = "https://www.meetup.com/find/outdoors-adventure/"

    category
  end

  def self.scrape_outdoor_and_adventures
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/outdoors-adventure"))
    binding.pry
  end

  def self.scrape_tech
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/tech"))

  end

  def self.scrape_family
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/parents-family"))

  end

  def self.scrape_health_and_wellness
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/health-wellness/"))

  end

  def self.scrape_learning
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/education"))

  end

  def self.scrape_sports_and_fitness
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/sports-fitness"))

  end

  def self.scrape_photograpy
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/photography"))

  end

  def self.scrape_food_and_drinks
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/food"))

  end

  def self.scrape_writing
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/writing"))

  end

  def self.scrape_language_and_culture
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/language"))

  end

  def self.scrape_music
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/music"))

  end

  def self.scrape_movements
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/movements"))

  end

  def self.scrape_lgbtq
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/lgbtq"))

  end

  def self.scrape_film
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/film"))

  end

  def self.scrape_scifi_and_games
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/games-sci-fi"))

  end

  def self.scrape_beliefs
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/beliefs"))

  end

  def self.scrape_arts
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/arts-culture"))

  end

  def self.scrape_book_clubs
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/book-clubs"))

  end

  def self.scrape_dance
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/dancing"))

  end

  def self.scrape_pets
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/pets"))

  end

  def self.scrape_hobbies_and_crafts
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/hobbies-crafts"))

  end

  def self.scrape_fashion_and_beauty
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/fashion-beauty"))

  end

  def self.scrape_social
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/social"))

  end

  def self.scrape_career_and_business
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/career-business"))
    title = doc.search("h1.text--display1").text.gsub("\n"," ")

  end
end
