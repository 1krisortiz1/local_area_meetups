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
        categories_array = LocalAreaMeetups::Scraper.scrape_categories
        categories_array.each.with_index(1) { |category, i|
          puts "#{i}. #{category.name}"
        }
        select_category(categories_array)
    end

    def select_category(categories_array)
        puts "Which Category are you interested in (1-24)?"
        input = gets.strip.downcase
        input = input.to_i

        if input > 0 && input < 25
            cat_name = categories_array[input -1].name.strip
            cat_url_array = categories_array[input -1].url
            cat_url = cat_url_array.to_s
            puts "Here are meetups in the #{cat_name.upcase} category."
        elsif
            puts "Please enter a valid response!"
        else
            goodbye
        end
        list_meetups(cat_url)
    end

    def list_meetups(cat_url)
        group_url = LocalAreaMeetups::Scraper.category_urls
        puts "Select a meetup for more information"
        meetup_lists = LocalAreaMeetups::Scraper.scraped_meetups(cat_url)
        meetup_lists.each.with_index(1) {|meetup, i|
            puts "#{i}. #{meetup.name} - #{meetup.members}"
        }
        select_group(group_url)
    end

    def select_group(group_url)
        puts "Which group are you interested in?"
        input = gets.strip.downcase
        input = input.to_i

        if input > 0 && input < 10
            meetup_name = group_url[input -1].name.strip
            meet_url_array = group_url[input -1].url
            group_url = meet_url_array
            puts "Here's info in the #{meetup_name.upcase}."
        elsif
            puts "Please enter a valid response!"
        else
            goodbye
        end
        LocalAreaMeetups::Scraper.meetup_details(group_url)
    end

  def goodbye
    puts "Come back again for more meetups!!!"
    puts " "
  end
end
