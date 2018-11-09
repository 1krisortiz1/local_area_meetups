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
    LocalAreaMeetups::Scraper.scrape_categories.each.with_index(1) do |category, i|
      puts "#{i}. #{category}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Choose list to view the categories again or type exit to exit:"
      input = gets.strip.downcase
      puts " "
      #case input
      #when "list"
        #list_categories
      #when "exit"
      #  goodbye
      #  break
    #  else
      #  system("open #{@meetups.add_meetups[input.toi-1]}")
      if input == "1"
        #check if I have scraped Category 1's meetups
        LocalAreaMeetups::Scraper.scrape_meetups("outdoors-adventure").each.with_index(1) do |meetup, i|
          puts "#{i}. #{meetup.group_name} - #{meetup.url} - #{meetup.members}"
        end
      elsif input == "2"
        LocalAreaMeetups::Scraper.scrape_meetups("tech")
      elsif input == "3"
        LocalAreaMeetups::Scraper.scrape_meetups("parents-family")
      elsif input == "4"
        LocalAreaMeetups::Scraper.scrape_meetups("health-wellness")
      elsif input == "5"
        LocalAreaMeetups::Scraper.scrape_meetups("education")
      elsif input == "6"
        LocalAreaMeetups::Scraper.scrape_meetups("sports-fitness")
      elsif input == "7"
        LocalAreaMeetups::Scraper.scrape_meetups("photography")
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

  def goodbye
    puts "Come back again for more meetups!!!"
    puts " "
  end
end
