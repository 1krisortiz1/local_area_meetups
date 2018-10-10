#CLI controller
class LocalAreaMeetups::CLI

  def call
    list_categories
    menu
    goodbye
  end

  def list_categories
    puts "Local Area Meetups"
    @meetups = LocalAreaMeetups::Meetup.current_meetups
    @meetups.each.with_index(1) do |meetup, i|
      puts "#{i}. #{meetup.category} - #{meetup.url}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Choose from the categories listed (1-24) or type list to see the categories again or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_meetup = @meetups[input.to_i-1]
        puts "#{meetup.category} - #{meetup.url}"
      elsif input == "list"
        list_categories
      else
        puts "Not sure what you want type list or exit"
      end
    end
  end

  def goodbye
    puts "See you next time!"
  end
end
