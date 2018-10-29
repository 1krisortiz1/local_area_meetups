class LocalAreaMeetups::Meetup
  attr_accessor :group_name, :url, :category

  def find_by_category(category)
    @@all.find { |meetup| meetup.category = category }
  end


  def self.scrape_tech_meetups
    puts "Scraping"
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/tech"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      tech_meetup = self.new
      tech_meetup.group_name = "#{text}"
      tech_meetup.url = "https://www.meetup.com/find/tech"
      tech_meetup
  end

  def self.scrape_family_meetups
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/parents-family"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      family_meetup = self.new
      family_meetup.group_name = "#{text}"
      family_meetup.url = "https://www.meetup.com/find/parents-family"
      family_meetup
  end

  def self.scrape_health_and_wellness
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/health-wellness"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      health_meetup = self.new
      health_meetup.group_name = "#{text}"
      health_meetup.url = "https://www.meetup.com/find/health-wellness"
      health_meetup
  end

  def self.scrape_learning_meetups
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/education"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      learning_meetup = self.new
      learning_meetup.group_name = "#{text}"
      learning_meetup.url = "https://www.meetup.com/find/education"
      learning_meetup
  end

  def self.scrape_sports_and_fitness
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/sports-fitness"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      sports_meetup = self.new
      sports_meetup.group_name = "#{text}"
      sports_meetup.url = "https://www.meetup.com/find/sports-fitness"
      sports_meetup
  end

  def self.scrape_photograpy
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/photography"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      photography_meetup = self.new
      photography_meetup.group_name = "#{text}"
      photography_meetup.url = "https://www.meetup.com/find/photography"
      photography_meetup
  end

  def self.scrape_food
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/food"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      food_meetup = self.new
      food_meetup.group_name = "#{text}"
      food_meetup.url = "https://www.meetup.com/find/food"
      food_meetup
  end

  def self.scrape_writing
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/writing"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      writing_meetup = self.new
      writing_meetup.group_name = "#{text}"
      writing_meetup.url = "https://www.meetup.com/find/writing"
      writing_meetup
  end

  def self.scrape_language_and_culture
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/language"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      language_meetup = self.new
      language_meetup.group_name = "#{text}"
      language_meetup.url = "https://www.meetup.com/find/language"
      language_meetup
  end

  def self.scrape_music
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/music"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      music_meetup = self.new
      music_meetup.group_name = "#{text}"
      music_meetup.url = "https://www.meetup.com/find/music"
      music_meetup
  end

  def self.scrape_movements
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/movements"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      movements_meetup = self.new
      movements_meetup.group_name = "#{text}"
      movements_meetup.url = "https://www.meetup.com/find/movements"
      movements_meetup
  end

  def self.scrape_lgbtq
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/lgbtq"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      lgbtq_meetup = self.new
      lgbtq_meetup.group_name = "#{text}"
      lgbtq_meetup.url = "https://www.meetup.com/find/lgbtq"
      lgbtq_meetup
  end

  def self.scrape_film
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/film"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      film_meetup = self.new
      film_meetup.group_name = "#{text}"
      film_meetup.url = "https://www.meetup.com/find/film"
      film_meetup
  end

  def self.scrape_games
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/games-sci-fi"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      games_meetup = self.new
      games_meetup.group_name = "#{text}"
      games_meetup.url = "https://www.meetup.com/find/games-sci-fi"
      games_meetup
  end

  def self.scrape_beliefs
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/beliefs"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      beliefs_meetup = self.new
      beliefs_meetup.group_name = "#{text}"
      beliefs_meetup.url = "https://www.meetup.com/find/beliefs/"
      beliefs_meetup
  end

  def self.scrape_arts
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/arts-culture"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      arts_meetup = self.new
      arts_meetup.group_name = "#{text}"
      arts_meetup.url = "https://www.meetup.com/find/arts-culture"
      arts_meetup
  end

  def self.scrape_book_clubs
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/book-clubs"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      book_clubs_meetup = self.new
      book_clubs_meetup.group_name = "#{text}"
      book_clubs_meetup.url = "https://www.meetup.com/find/book-clubs"
      book_clubs_meetup
  end

  def self.scrape_dance
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/dancing"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      dance_meetup = self.new
      dance_meetup.group_name = "#{text}"
      dance_meetup.url = "https://www.meetup.com/find/dancing"
      dance_meetup
  end

  def self.scrape_pets
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/pets"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      pets_meetup = self.new
      pets_meetup.group_name = "#{text}"
      pets_meetup.url = "https://www.meetup.com/find/pets"
      pets_meetup
  end

  def self.scrape_hobbies_and_crafts
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/hobbies-crafts"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      hobbies_meetup = self.new
      hobbies_meetup.group_name = "#{text}"
      hobbies_meetup.url = "https://www.meetup.com/find/hobbies-crafts"
      hobbies_meetup
  end

  def self.scrape_fashion_and_beauty
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/fashion-beauty"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      fashion_meetup = self.new
      fashion_meetup.group_name = "#{text}"
      fashion_meetup.url = "https://www.meetup.com/find/fashion-beauty"
      fashion_meetup
  end

  def self.scrape_social
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/social"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      social_meetup = self.new
      social_meetup.group_name = "#{text}"
      social_meetup.url = "https://www.meetup.com/find/social"
      social_meetup
  end

  def self.scrape_career_and_business
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/career-business"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
      career_meetup = self.new
      career_meetup.group_name = "#{text}"
      career_meetup.url = "https://www.meetup.com/find/career-business/"
      career_meetup
  end
end
