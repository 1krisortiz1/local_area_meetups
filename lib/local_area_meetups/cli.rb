class LocalAreaMeetups::CLI

  def call
    list_categories
    menu
    list_meetups
    goodbye
  end

  def menu
        #input = nil
      #while input != "exit"
          puts "Choose from the category list (1 - 24) or list to view the categories again or type exit to exit:"
          #input = gets.strip.downcase
          #if input.to_i > 0
            #the_category = @category[input.to_i-1]
            #puts "#{the_category.name}"
            #the_meetup = @meetup[input.to_i-1]
            #puts "#{the_meetup.name} - #{the_meetup.group_name} - #{the_meetup.meetup_location}, #{the_meetup.meetup_date_and_time}, #{the_meetup.url}"

            #meetup_input = gets.strip.downcase

          #elsif input == "list"
            #list_categories
          #else
            #puts "Please enter a valid response!"
          #end
      #end
  end


    def list_categories
      puts "Local Meetup Categories:"
      @category = LocalAreaMeetups::Category.categories
      @category.each.with_index(1) do |category, i|
        puts "#{i}. #{category.name}"
      end
    end

    def list_meetups
        puts "Here are meetups in the area:"
        @meetup = LocalAreaMeetups::Meetup.category_meetups
        @meetup.each.with_index(1) do |meetup, i|
          puts "#{i}. #{meetup.name} - #{meetup.group_name} - #{meetup.meetup_location}, #{meetup.meetup_date_and_time}, #{meetup.url}"
        end
    end

  def goodbye
    puts "Come back again for more meetups!!!"
  end
end
