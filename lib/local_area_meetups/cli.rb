class LocalAreaMeetups::CLI

  def call
    list_categories
    menu
  end

  def list_categories
    puts "Choose from the category list (1 - 24)"
    puts "Loading.................................."
    @category = LocalAreaMeetups::Category.categories
    @category.each.with_index(1) do |category, i|
      puts "#{i}. #{category.name}"
    end
  end

  def list_meetups
    puts "Here is a list of meetups:"
    puts "Loading..................."
    @meetup_meetups = LocalAreaMeetups::Meetup.category_meetups
    @meetup_meetups.each.with_index(1) do |meetup, i|
      puts "#{i}. #{meetup_meetups.group_name} - #{meetup_meetups.group_url}"
    end
      puts "Enjoy!!"
  end

  def menu
    input = nil
    while input != "exit"
      puts "Choose list to view the categories again or type exit to exit:"
      input = gets.strip.downcase

      if input == "1"
        @meetup_meetups[0] #Outdoors & Adventure Meetups
      elsif input == "2"
        list_meetups #Tech Meetups
      elsif input == "3"
        list_meetups #Family Meetups
      elsif input == "4"
        list_meetups #Health & Wellness Meetups
      elsif input == "5"
        list_meetups #Learning Meetups
      elsif input == "6"
        list_meetups #Sports & Fitness Meetups
      elsif input == "7"
        list_meetups #Photography Meetups
      elsif input == "8"
        list_meetups #Food & Drink Meetups
      elsif input == "9"
        list_meetups #Writing Meetups
      elsif input == "10"
        list_meetups #Language & Culture Meetups
      elsif input == "11"
        list_meetups #Music Meetups
      elsif input == "12"
        list_meetups #Movements Meetups
      elsif input == "13"
        list_meetups #LGBTQ Meetups
      elsif input == "14"
        list_meetups #Film Meetups
      elsif input == "15"
        list_meetups #Sci-Fi & Games Meetups
      elsif input == "16"
        list_meetups #Beliefs Meetups
      elsif input == "17"
        list_meetups #Arts Meetups
      elsif input == "18"
        list_meetups #Book Clubs Meetups
      elsif input == "19"
        list_meetups #Dance Meetups
      elsif input == "20"
        list_meetups #Pets Meetups
      elsif input == "21"
        list_meetups #Hobbies & Crafts Meetups
      elsif input == "22"
        list_meetups #Fashion & Beauty Meetups
      elsif input == "23"
        list_meetups #Social Meetups
      elsif input == "24"
        list_meetups #Career & Business Meetups
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
  end
end
