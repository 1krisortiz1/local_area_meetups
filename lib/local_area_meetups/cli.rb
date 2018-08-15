# CLI Controller
class LocalAreaMeetups::CLI

  def call
    list_meetups
    menu
    goodbye
  end

  def list_meetups
    puts "Local Area Meetups"
    @meetups = LocalAreaMeetups::Meetups.info # should return meetups
    @meetups.each.with_index(1) do |meetups, i|
      puts "#{i}. #{meetups.group_name} - #{meetups.date_time} - #{meetups.location}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the meetup you'd like more info on or type list to see the list again or type exit: "
      input = gets.strip.downcase

      if input.to_i > 0 # if it converts to an integer and is greater than zero
          the_meetup = @meetups[input.to_i-1]
          puts "#{meetups.group_name} - #{meetups.date_time} - #{meetups.location}" # -1 want array index to this deal
        elsif input == "list"
          list_meetups
        else
          puts "Not sure what you want, type list or exit."
      end
    end
  end

  def goodbye
    puts "See you tomorrow for more meeups!!!"
  end
end
