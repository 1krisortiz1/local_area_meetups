class LocalAreaMeetups::CLI

  	def call
        welcome
  		list_categories
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
        puts " "
        categories_array = LocalAreaMeetups::Scraper.scrape_categories
        categories_array.each.with_index(1) { |category, i|
          puts "#{i}. #{category.name}"
        }
        select_category(categories_array)
    end

  def select_category(categories_array)
    puts "Which Category are you interested in?"
    puts "Choose 1-24:"
    input = gets.strip.downcase
    input = input.to_i

    if input > 0 && input < 25
        cat_name = categories_array[input -1].name.strip
        puts "Here are meetups in the #{cat_name.upcase} category."
        list_meetups(cat_name)
    elsif
        puts "Please enter a valid response!"
    else
      goodbye
    end
  end

  def list_meetups(cat_name)
      meetup_array = LocalAreaMeetups::Meetup.list_meetups(cat_name)
      meetup_array
  end

  def goodbye
    puts "Come back again for more meetups!!!"
    puts " "
  end
end
