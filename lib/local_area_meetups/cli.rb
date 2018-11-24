class LocalAreaMeetups::CLI

  	BASE_URL = "https://www.meetup.com/"

  	def call
  		list_categories
  		menu
  	end

  	def list_categories
  		LocalAreaMeetups::Scraper.scrape_categories
    end

  def welcome
    puts " ================================================"
    puts "|                                                |"
    puts "|    Welcome to my First Ruby CLI Meetup Gem     |"
    puts "|                                                |"
    puts " ==============================================="
  end

  def list_categories #lists all 24 categories
    puts "Choose from the category list (1-24)"
    puts " "
    LocalAreaMeetups::Scraper.scrape_categories.each.with_index(1) do |category, i|
      puts "#{i}. #{category}"
    end
  end

  def menu  #asks the user to choose a category.
    puts "Which Category are you interested in?"
    puts "Choose 1-24:"
    input = gets.strip.downcase

    if input == "1"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[0]
    elsif input == "2"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[1]
    elsif input == "3"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[2]
    elsif input == "4"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[3]
    elsif input == "5"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[4]
    elsif input == "6"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[5]
    elsif input == "7"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[6]
    elsif input == "8"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[7]
    elsif input == "9"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[8]
    elsif input == "10"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[9]
    elsif input == "11"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[10]
    elsif input == "12"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[11]
    elsif input == "13"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[12]
    elsif input == "14"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[13]
    elsif input == "15"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[14]
    elsif input == "16"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[15]
    elsif input == "17"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[16]
    elsif input == "18"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[17]
    elsif input == "19"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[18]
    elsif input == "20"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[19]
    elsif input == "21"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[20]
    elsif input == "22"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[21]
    elsif input == "23"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[22]
    elsif input == "24"
        LocalAreaMeetups::Scraper.scrape_cat_meetup_details[23]
    elsif input == "n"
      goodbye
    elsif
      puts "Please enter a valid response!"
      choose_category
    end
  end

  def goodbye
    puts "Come back again for more meetups!!!"
    puts " "
  end

  def print_category_meetups(input)
    puts "#{meetup.group_name}"
    puts "#{meetup.members}"
  end

  def print_category_meetup(meetup)
    puts "#{meetup.group_name}"
    puts "#{meetup.members}"
  end
end
