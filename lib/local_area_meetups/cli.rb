class LocalAreaMeetups::CLI
    def call
        welcome
        list_categories
        goodbye
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

    def select_category(categories_array)
        puts "Which Category are you interested in (1-24)?"
        input = nil
        while input != 99
            puts "Choose 0 to view the categories again or type 99 to exit"
            input = gets.strip.downcase
            input = input.to_i
        if input > 0 && input < 25
            cat_name = categories_array[input -1].name.strip
            cat_url = categories_array[input -1].href
            puts "Here are groups in the #{cat_name.upcase} category."
               list_groups(cat_url)
        elsif input == 0
            list_categories
        elsif input == 99
            goodbye
        else
            puts "Please enter a valid response!"
        end
    end
    end

    def list_groups(cat_url)
        puts "===========Groups List============SELECT THE LINK TO VIEW THEIR PAGE"
        group_list = LocalAreaMeetups::Scraper.get_groups(cat_url)
        group_list.each.with_index(1) {|meetup, i| puts "\n#{i}. #{meetup.name} - #{meetup.members}\n\t\t--->#{meetup.url}"}
        puts ""
    end

  def goodbye
    puts "Come back again for more meetups!!!"
    puts " "
  end
end
