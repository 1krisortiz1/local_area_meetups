class LocalAreaMeetups::CLI
  attr_accessor :category

  def initialize; end

  def call
    welcome
    choose_category
    category_menu
  end

  def welcome
    puts " ================================================"
    puts "|                                                |"
    puts "|    Welcome to my First Ruby CLI Meetup Gem     |"
    puts "|                                                |"
    puts " ==============================================="
  end

  def choose_category  #asks the user to choose a category.
    puts "Which Category are you interested in?"
    list_categories
  end

  def choose_meetup_group
    puts "Which Meetup Group are you interested in?"
  end

  def list_categories #lists all 24 categories
    puts "Choose from the category list (1-24)"
    puts " "
    LocalAreaMeetups::Scraper.scrape_categories.each.with_index(1) do |category, i|
      puts "#{i}. #{category}"
    end
    puts ""
  end

  def list_meetups #lists the meetups scraped from each category url
    LocalAreaMeetups::Scraper.scrape_meetups("pets").each.with_index(1) do |meetup, i|
      puts "#{i}. #{meetup}"
    end
    puts ""
  end

  def category_menu
    input = nil
    while input != "exit"
      puts "Choose list to view the categories again or type exit to exit:"
      input = gets.strip.downcase
      puts " "
      if input == "1"
        list_meetups
        meetup_menu
      elsif input == "list"
        list_categories
      elsif input == "exit"
        goodbye
      else
        puts "Please enter a valid response!"
      end
    end
  end

  def meetup_menu
    input = nil
    while input != "exit"
      puts "Choose a meetup to view more information or chose exit to return to the category list"
      puts ""
      input = gets.strip.downcase
      puts ""
      if input == "1"
        LocalAreaMeetups::Scraper.scrape_groups
      elsif input == "meetups"
        list_meetups
      elsif input == "exit"
        list_categories
      else
        puts "Please enter a valid response"
      end
    end
  end

  def goodbye
    puts "Come back again for more meetups!!!"
    puts " "
  end
end
