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
    @meetup = LocalAreaMeetups::Meetup.category_meetups
    @meetup.each.with_index(1) do |meetup, i|
      puts "#{i}. #{meetup.group_name} - #{meetup.group_location} - #{meetup.member_count} - #{meetup.group_status}"
    end
    puts "Enjoy!!"
  end

  def menu
    input = nil
    while input != "exit"
      puts "Choose list to view the categories again or type exit to exit:"
      input = gets.strip.downcase

      if input == "1"
        puts "Here is a list of meetups:"
        puts "Loading..................."
        list_meetups
        #the_category = @category[input.to_i-1]
        #the_meetup = @meetup[input.to_i-1]
        #puts "Click the link for meetups in your area!"
        #puts "#{the_category.name} - #{the_category.url}"
      elsif input == "2"
        list_meetups
      elsif input == "list"
        list_categories
      elsif input == "exit"
        goodbye
      else
        puts "Please enter a valid response!"
      end
    end
  end
        #puts "Select a meetup group for more information"
        #puts "#{meetup.group_name} - #{meetup.group_location} - #{meetup.member_count} - #{meetup.group_status}"
  def goodbye
    puts "Come back again for more meetups!!!"
  end
end
