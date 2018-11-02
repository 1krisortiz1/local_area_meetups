class LocalAreaMeetups::CLI

  def call
    welcome
    #scrape first level

    list_categories
    menu
  end

  def welcome
    puts "-----------------------------------------"
    puts ""
    puts "Welcome to my First Ruby CLI Meetup Gem"
    puts ""
    puts "-----------------------------------------"
  end

  def list_categories
    puts "Choose from the category list (1 - 24)"
    puts ""
    puts LocalAreaMeetups::Scraper.scrape_categories #.all.each.with_index(1) do |category, i|
    #  puts "#{i}. #{category.name}"
    #end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Choose list to view the categories again or type exit to exit:"
      input = gets.strip.downcase
      puts " "
      if input == "1"
        #check if I have scraped Category 1's meetups
          list_meetups_outdoor#Outdoors & Adventure Meetups
      elsif input == "2"
        list_meetups_tech #Tech Meetups
      elsif input == "3"
        list_meetups_family #Family Meetups
      elsif input == "4"
        list_meetups_health #Health & Wellness Meetups
      elsif input == "5"
        list_meetups_learning #Learning Meetups
      elsif input == "6"
        list_meetups_sports #Sports & Fitness Meetups
      elsif input == "7"
        list_meetups_photography #Photography Meetups
      elsif input == "8"
        list_meetups_food #Food & Drink Meetups
      elsif input == "9"
        list_meetups_writing #Writing Meetups
      elsif input == "10"
        list_meetups_language_culture #Language & Culture Meetups
      elsif input == "11"
        list_meetups_music #Music Meetups
      elsif input == "12"
        list_meetups_movements #Movements Meetups
      elsif input == "13"
        list_meetups_lgbtq #LGBTQ Meetups
      elsif input == "14"
        list_meetups_film #Film Meetups
      elsif input == "15"
        list_meetups_games #Sci-Fi & Games Meetups
      elsif input == "16"
        list_meetups_beliefs #Beliefs Meetups
      elsif input == "17"
        list_meetups_arts #Arts Meetups
      elsif input == "18"
        list_meetups_book_clubs #Book Clubs Meetups
      elsif input == "19"
        list_meetups_dance #Dance Meetups
      elsif input == "20"
        list_meetups_pets #Pets Meetups
      elsif input == "21"
        list_meetups_hobbies #Hobbies & Crafts Meetups
      elsif input == "22"
        list_meetups_fashion #Fashion & Beauty Meetups
      elsif input == "23"
        list_meetups_social #Social Meetups
      elsif input == "24"
        list_meetups_career #Career & Business Meetups
      elsif input == "list"
        list_categories
      elsif input == "exit"
        goodbye
      else
        puts "Please enter a valid response!"
      end
    end
  end

  def list_meetups_outdoor
    puts "Here is a list of Outdoor meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_outdoor_meetups
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts " "
    puts "Outdoor Meetups: "
    puts "#{@meetup.group_name}"
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
  end
  def list_meetups_tech
    puts "Here is a list of Tech meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_tech_meetups
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts " "
    puts "Tech Meetups: "
    puts "#{@meetup.group_name}"
    puts " "
  end
  def list_meetups_family
    puts "Here is a list of Family meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_family_meetups
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts " "
    puts "Family Meetups: "
    puts "#{@meetup.group_name}"
    puts " "
  end
  def list_meetups_health
    puts "Here is a list of Health and Wellness meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_health_and_wellness
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts " "
    puts "#{@meetup.group_name}"
    puts " "
  end
  def list_meetups_learning
    puts "Here is a list of Learning meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_learning_meetups
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts " "
    puts "#{@meetup.group_name}"
    puts " "
  end
  def list_meetups_sports
    puts "Here is a list of meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_sports_and_fitness
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts " "
    puts "#{@meetup.group_name}"
    puts " "
  end
  def list_meetups_photography
    puts "Here is a list of meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_photograpy
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts " "
    puts "#{@meetup.group_name}"
    puts " "
  end
  def list_meetups_food
    puts "Here is a list of meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_food
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts " "
    puts "#{@meetup.group_name}"
    puts " "
  end
  def list_meetups_writing
    puts "Here is a list of meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_writing
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts " "
    puts "#{@meetup.group_name}"
    puts " "
  end
  def list_meetups_language_culture
    puts "Here is a list of meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_language_and_culture
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts " "
    puts "#{@meetup.group_name}"
    puts " "
  end
  def list_meetups_music
    puts "Here is a list of meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_music
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts " "
    puts "#{@meetup.group_name}"
    puts " "
  end
  def list_meetups_movements
    puts "Here is a list of meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_movements
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts " "
    puts "#{@meetup.group_name}"
    puts " "
  end
  def list_meetups_lgbtq
    puts "Here is a list of meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_lgbtq
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts " "
    puts "#{@meetup.group_name}"
    puts " "
  end
  def list_meetups_film
    puts "Here is a list of meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_film
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts " "
    puts "#{@meetup.group_name}"
    puts " "
  end
  def list_meetups_games
    puts "Here is a list of meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_games
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts " "
    puts "#{@meetup.group_name}"
    puts " "
  end
  def list_meetups_beliefs
    puts "Here is a list of meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_beliefs
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts " "
    puts "#{@meetup.group_name}"
    puts " "
  end
  def list_meetups_arts
    puts "Here is a list of meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_arts
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts " "
    puts "#{@meetup.group_name}"
    puts " "
  end
  def list_meetups_book_clubs
    puts "Here is a list of meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_book_clubs
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "#{@meetup.group_name}"
    puts " "
    puts "Enjoy!!"
    puts " "
  end
  def list_meetups_dance
    puts "Here is a list of meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_dance
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts " "
    puts "#{@meetup.group_name}"
    puts " "
  end
  def list_meetups_pets
    puts "Here is a list of meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_pets
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts " "
    puts "#{@meetup.group_name}"
    puts " "
  end
  def list_meetups_hobbies
    puts "Here is a list of meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_hobbies_and_crafts
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts " "
    puts "#{@meetup.group_name}"
    puts " "
  end
  def list_meetups_fashion
    puts "Here is a list of meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_fashion_and_beauty
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts " "
    puts "#{@meetup.group_name}"
    puts " "
  end
  def list_meetups_social
    puts "Here is a list of meetups:"
    puts "Loading..................."
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_social
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts " "
    puts "#{@meetup.group_name}"
    puts " "
  end
  def list_meetups_career
    puts "Here is a list of meetups:"
    puts ""
    puts " "
    @meetup = LocalAreaMeetups::Meetup.scrape_career_and_business
    puts " "
    puts "Click the link for more information on the meetups listed below: #{@meetup.url}"
    puts "Enjoy!!"
    puts "Career Meetups: "
    puts " "
    puts "#{@meetup.group_name}"
    puts " "

  end

  def goodbye
    puts "Come back again for more meetups!!!"
    puts " "
  end
end
