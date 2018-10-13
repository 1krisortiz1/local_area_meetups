class LocalAreaMeetups::CLI

  def call
    list_categories
    menu
    #list_meetups
    #goodbye
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
        puts "#{the_category}"
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
