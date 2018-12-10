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
        puts "Choose from the category list (1-24)"
        categories_array = LocalAreaMeetups::Scraper.get_categories
        categories_array.each.with_index(1) { |category, i| puts "#{i}. #{category.name}"}
        select_category(categories_array)
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

    def select_category(categories_array)
        puts "Which Category are you interested in (1-24)?"
        input = gets

            input = input.to_i
            if input > 0 && input < 25
                cat_name = categories_array[input -1].name.strip
                cat_url = categories_array[input -1].href

                puts "\nHere are groups in the #{cat_name.upcase} category."
                puts ""
                list_groups(cat_url)
            else
                invalid_response
        end
    end

    def list_groups(cat_url)
        puts "=======SELECT THE LINK TO VIEW THEIR PAGE================="
        group_list = LocalAreaMeetups::Scraper.get_groups(cat_url)
        group_list.each.with_index(1) {|meetup, i| puts "\n#{i}. #{meetup.name} \n\t  #{meetup.members} \n\t  #{meetup.url}"}
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
  binding.pry
end
