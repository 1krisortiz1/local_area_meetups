class LocalAreaMeetups::CLI

  def call
    LocalAreaMeetups::Scraper.new.make_meetups
    welcome
    list_categories
    choose_category
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
    puts ""
  end

  def choose_category  #asks the user to choose a category.
    puts "Which Category are you interested in?"
    puts "Choose 1-24:"
    input = gets.strip.downcase

    print_category_meetups(input)

    puts "Which meetup would you like more information on?"
    input = gets.strip

    meetup = LocalAreaMeetups::Meetup.find(input.to_i)

    print_category_meetup(meetup)

    puts "Would you like to check-out another meetup? (y/n)"
    input = gets.strip.downcase

    if input == "y"
      choose_category
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
