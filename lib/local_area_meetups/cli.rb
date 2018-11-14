class LocalAreaMeetups::CLI

  def call
    welcome
    #scrape first level
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

  def choose_category
    #asks the user to choose a category.
    puts "Which Category are you interested in?"
    list_categories
  end

  def list_categories
    puts "Choose from the category list (1-24)"
    puts " "
    LocalAreaMeetups::Scraper.scrape_categories.each.with_index(1) do |category, i|
      puts "#{i}. #{category}"
    end
  end

  def self.list_meetups
    puts "Choose a Meetup"
    puts ""
    LocalAreaMeetups::Scraper.scrape_groups.each.with_index(1) do |meetup, i|
      puts "#{i}. #{meetup}"
    end
    binding.pry
  end

  def category_menu
    input = nil
    while input != "exit"
      puts "Choose list to view the categories again or type exit to exit:"
      input = gets.strip.downcase
      puts " "
      if input == "list"
        list_categories
      elsif input == "exit"
        goodbye
      else
        puts "Please enter a valid response!"
      end
    end
  end

  def meetup_menue
    input = nil
    while input != "categories"
      puts "Choose a meetup"
      input = gets.strip.downcase
      puts ""
      if input == "1"
        list_meetups
      elsif input == "categories"
        list_categories
      elsif input == "meetups"
        list_meetups
      elsif input == "exit"
        goodbye
      end
    end
  end

  def goodbye
    puts "Come back again for more meetups!!!"
    puts " "
  end
end
