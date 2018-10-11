class LocalAreaMeetups::CLI

  def call

    list_categories
    menu
  end

  def list_categories
    puts "Local Meetups"
    puts <<~DOC
      1. Outdoors & Adventure
      2. Tech
      3. Family
    DOC
  end

  def menu
      puts "Choose from the category list (1 - 24) or type exit to exit:"
        input = nil
        while input != "exit"
        input = gets.strip.downcase
        case input
        when "1"
          puts "Here are meetups in the Outdoors & Adventure category"
        when "2"
          puts "Here are meetups in the Tech category"
        end
      end
  end
end
