class LocalAreaMeetups::Meetup
  attr_accessor :group_name, :url

  def self.meetups
    self.scrape_outdoor_meetups
    self.scrape_tech_meetups
    self.scrape_family_meetups
    self.scrape_health_and_wellness
    self.scrape_learning_meetups
    self.scrape_sports_and_fitness
    self.scrape_photograpy
    self.scrape_food
    self.scrape_writing
    self.scrape_language_and_culture
    self.scrape_music
    self.scrape_movements
    self.scrape_lgbtq
    self.scrape_film
    self.scrape_games
    self.scrape_beliefs
    self.scrape_arts
    self.scrape_book_clubs
    self.scrape_dance
    self.scrape_pets
    self.scrape_hobbies_and_crafts
    self.scrape_fashion_and_beauty
    self.scrape_social
    self.scrape_career_and_business
  end

  def self.scrape_outdoor_meetups
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/outdoors-adventure/"))
    #binding.pry
    #i = 0
    #while i < 6
      outdoor_meetup = self.new
      outdoor_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      outdoor_meetup.url = "https://www.meetup.com/find/outdoors-adventure"
      outdoor_meetup
      binding.pry

      #i += 1
    #end
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

  def self.scrape_language_and_culture
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/language"))
    i = 0
    while i < 6
      language_meetup = self.new
      language_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      language_meetup.url = "https://www.meetup.com/find/language"
      @meetup_meetups << language_meetup
      i += 1
    end
  end

  def self.scrape_music
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/music"))
    i = 0
    while i < 6
      music_meetup = self.new
      music_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      music_meetup.url = "https://www.meetup.com/find/music"
      @meetup_meetups << music_meetup
      i += 1
    end
  end

  def self.scrape_movements
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/movements"))
    i = 0
    while i < 6
      movements_meetup = self.new
      movements_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      movements_meetup.url = "https://www.meetup.com/find/movements"
      @meetup_meetups << movements_meetup
      i += 1
    end
  end

  def self.scrape_lgbtq
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/lgbtq"))
    i = 0
    while i < 6
      lgbtq_meetup = self.new
      lgbtq_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      lgbtq_meetup.url = "https://www.meetup.com/find/lgbtq"
      @meetup_meetups << lgbtq_meetup
      i += 1
    end
  end

  def self.scrape_film
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/film"))
    i = 0
    while i < 6
      film_meetup = self.new
      film_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      film_meetup.url = "https://www.meetup.com/find/film"
      @meetup_meetups << film_meetup
      i += 1
    end
  end

  def self.scrape_games
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/games-sci-fi"))
    i = 0
    while i < 6
      games_meetup = self.new
      games_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      games_meetup.url = "https://www.meetup.com/find/games-sci-fi"
      @meetup_meetups << games_meetup
      i += 1
    end
  end

  def self.scrape_beliefs
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/beliefs"))
    i = 0
    while i < 6
      beliefs_meetup = self.new
      beliefs_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      beliefs_meetup.url = "https://www.meetup.com/find/beliefs/"
      @meetup_meetups << beliefs_meetup
      i += 1
    end
  end

  def self.scrape_arts
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/arts-culture"))
    i = 0
    while i < 6
      arts_meetup = self.new
      arts_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      arts_meetup.url = "https://www.meetup.com/find/arts-culture"
      @meetup_meetups << arts_meetup
      i += 1
    end
  end

  def self.scrape_book_clubs
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/book-clubs"))
    i = 0
    while i < 6
      book_clubs_meetup = self.new
      book_clubs_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      book_clubs_meetup.url = "https://www.meetup.com/find/book-clubs"
      @meetup_meetups << book_clubs_meetup
      i += 1
    end
  end

  def self.scrape_dance
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/dancing"))
    i = 0
    while i < 6
      dance_meetup = self.new
      dance_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      dance_meetup.url = "https://www.meetup.com/find/dancing"
      @meetup_meetups << dance_meetup
      i += 1
    end
  end

  def self.scrape_pets
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/pets"))
    i = 0
    while i < 6
      pets_meetup = self.new
      pets_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      pets_meetup.url = "https://www.meetup.com/find/pets"
      @meetup_meetups << pets_meetup
      i += 1
    end
  end

  def self.scrape_hobbies_and_crafts
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/hobbies-crafts"))
    i = 0
    while i < 6
      hobbies_meetup = self.new
      hobbies_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      hobbies_meetup.url = "https://www.meetup.com/find/hobbies-crafts"
      @meetup_meetups << hobbies_meetup
      i += 1
    end
  end

  def self.scrape_fashion_and_beauty
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/fashion-beauty"))
    i = 0
    while i < 6
      fashion_meetup = self.new
      fashion_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      fashion_meetup.url = "https://www.meetup.com/find/fashion-beauty"
      @meetup_meetups << fashion_meetup
      i += 1
    end
  end

  def self.scrape_social
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/social"))
    i = 0
    while i < 6
      social_meetup = self.new
      social_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      social_meetup.url = "https://www.meetup.com/find/social"
      @meetup_meetups << social_meetup
      i += 1
    end
  end

  def self.scrape_career_and_business
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/career-business"))
    #i = 0
    #while i < 6
      career_meetup = self.new
      career_meetup.group_name = doc.search("ul.j-groupCard-list a").text
      career_meetup.url = "https://www.meetup.com/find/career-business/"
      #@meetup_meetups << career_meetup
      #i += 1
      career_meetup
    #end
  end
end
