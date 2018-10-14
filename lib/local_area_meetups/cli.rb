class LocalAreaMeetups::CLI

  def call
    list_categories
    menu
    list_meetups
  end

  def list_categories
    puts "Local Meetup Categories:"
    @category = LocalAreaMeetups::Category.categories
    @category.each.with_index(1) do |category, i|
      puts "#{i}. #{category.name}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Choose from the category list (1 - 24) or list to view the categories again or type exit to exit:"
      input = gets.strip.downcase

      if input.to_i > 0 && input.to_i < 25
        the_category = @category[input.to_i-1]
        puts "Click the link for meetups in your area!"
        puts "#{the_category.name} - #{the_category.url}"
        the_meetup = @meetup[input.to_i-1]
        puts "Select a meetup group for more information"
        puts "#{meetup.group_name} - #{meetup.group_location} - #{meetup.member_count} - #{meetup.group_status}"
      elsif input == "list"
        list_categories
      elsif input == "exit"
        goodbye
      else
        puts "Please enter a valid response!"
      end
    end
  end

  def list_meetups
    puts "Here is a list of meetups:"
    @meetup = LocalAreaMeetups::Meetup.category_meetups
    @meetup.each.with_index(1) do |meetup, i|
      puts "#{i}. #{meetup.group_name} - #{meetup.group_location} - #{meetup.member_count} - #{meetup.group_status}"
    end
  end

  def goodbye
    puts "Come back again for more meetups!!!"
  end
end
