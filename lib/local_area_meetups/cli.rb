class LocalAreaMeetups::CLI
    def call
        welcome
        list_categories
        menu
    end

     def welcome
          puts " ================================================"
          puts "|                                                |"
          puts "|    Welcome to my First Ruby CLI Meetup Gem     |"
          puts "|                                                |"
          puts " ==============================================="
    end

    def list_categories
        LocalAreaMeetups::Scraper.get_categories if LocalAreaMeetups::Category.all == []
        puts "Choose from the category list (1-#{LocalAreaMeetups::Category.all.size})"
        LocalAreaMeetups::Category.all.each.with_index(1) { |category, i| puts "#{i}. #{category.name}"}
        select_category
    end

    def menu
        input = nil
        while input != "exit"
            puts "Choose 'list' to view the categories again or type 'exit' to exit"
            input = gets.strip.downcase
            if input == "list"
                list_categories
            elsif input == "exit"
                goodbye
            else
                invalid_response
            end
        end
    end

    def select_category
        categories_array = LocalAreaMeetups::Category.all
        puts "Which Category are you interested in (1-#{categories_array.size})?"
        input = gets

            input = input.to_i
            if input > 0 && input <= categories_array.size
                cato = categories_array[input -1]
                puts "\nHere are groups in the #{cato.name.upcase} category."
                puts ""
                list_groups(cato)
            else
                invalid_response
        end
    end

    def list_groups(cato)
        puts "=======SELECT THE LINK TO VIEW THEIR PAGE================="
        LocalAreaMeetups::Scraper.get_groups(cato) if cato.meetups == []
        cato.meetups.each.with_index(1) {|meetup, i| puts "\n#{i}. #{meetup.name} \n\t  #{meetup.members} \n\t  #{meetup.url}"}
        puts ""
        puts "=============================================================="
    end

  def goodbye
    puts "================================================================"
    puts "Come back again for more meetups!!!"
    puts " "
  end

  def invalid_response
      puts "Please enter a valid response"
  end
end
