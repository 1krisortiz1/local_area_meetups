class LocalAreaMeetups::Category
  attr_accessor :name, :url

  def self.categories
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

    category
  end

  def self.scrape_outdoor_and_adventures
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/outdoors-adventure"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/outdoors-adventure"
    #category.info = doc.search("h3.inline-block").text.strip.gsub("\n", ",").gsub("\t", "")
    category
  end

  def self.scrape_tech
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/tech"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/tech"
    category
  end

  def self.scrape_family
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/parents-family"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/parents-family"
    category
  end

  def self.scrape_health_and_wellness
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/health-wellness/"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/health-wellness"
    category
  end

  def self.scrape_learning
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/education"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/education"
    category
  end

  def self.scrape_sports_and_fitness
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/sports-fitness"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/sports-fitness"
    category
  end

  def self.scrape_photograpy
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/photography"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/photography"
    category
  end

  def self.scrape_food_and_drinks
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/food"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/food"
    category
  end

  def self.scrape_writing
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/writing"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/writing"
    category
  end

  def self.scrape_language_and_culture
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/language"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/language"
    category
  end

  def self.scrape_music
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/music"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/music"
    category
  end

  def self.scrape_movements
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/movements"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/movements"
    category
  end

  def self.scrape_lgbtq
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/lgbtq"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/lgbtq"
    category
  end

  def self.scrape_film
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/film"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/film"
    category
  end

  def self.scrape_scifi_and_games
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/games-sci-fi"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/games-sci-fi"
    category
  end

  def self.scrape_beliefs
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/beliefs"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/beliefs"
    category
  end

  def self.scrape_arts
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/arts-culture"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/arts-culture"
    category
  end

  def self.scrape_book_clubs
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/book-clubs"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/book-clubs"
    category
  end

  def self.scrape_dance
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/dancing"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/dancing"
    category
  end

  def self.scrape_pets
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/pets"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/pets"
    category
  end

  def self.scrape_hobbies_and_crafts
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/hobbies-crafts"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/hobbies-crafts"
    category
  end

  def self.scrape_fashion_and_beauty
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/fashion-beauty"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/fashion-beauty"
    category
  end

  def self.scrape_social
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/social"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/social"
    category
  end

  def self.scrape_career_and_business
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/career-business"))

    category = self.new
    category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    category.url = "https://www.meetup.com/find/career-business"
    category
  end
end
