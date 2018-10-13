class LocalAreaMeetups::Category
  attr_accessor :name, :url

  def self.categories
    #doc = Nokogiri::HTML(open("https://www.meetup.com"))
    #category_name = doc.search("li.gridList-item").text
    #binding.pry
  #end

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
    category << self.scrape_outdoor_and_adventures


    category_1 = self.new
    category_1.name = "Outdoors & Adventure"
    category_1.url = "https://www.meetup.com/find/outdoors-adventure/"

    category
  end

  def scrape_outdoor_and_adventures
  end

  def self.scrape_tech
    category = []

    category_2 = self.new
    category_2.name = "Tech"
    category_2.url = "https://www.meetup.com/find/tech/"

    category
  end
end
