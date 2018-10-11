class LocalAreaMeetups::CLI

  def call
    list_categories
    menu
    goodbye
  end

  def list_categories
    puts "Local Meetup Categories:"
    puts <<~DOC
      1. Outdoors & Adventure
      2. Tech
      3. Family
      4. Health & Wellness
    DOC
  end

  def menu
        input = nil
      while input != "exit"
          puts "Choose from the category list (1 - 24) or list to view the categories again or type exit to exit:"
          input = gets.strip.downcase
          case input
          when "1"
            puts "Here are meetups in the Outdoors & Adventure category"
            puts "List of meetups will show here"
          when "2"
            puts "Here are meetups in the Tech category"
          when "3"
            puts "Here are meetups in the Family category"
            puts "List of meetups will show here"
          when "4"
            puts "Here are meetups in the Health & Wellness category"
            puts "List of meetups will show here"
          when "list"
            list_categories
          else
            puts "Please enter a valid response!"
          end
      end
  end

  def goodbye
    puts "Come back again for more meetups!!!"
  end
end
