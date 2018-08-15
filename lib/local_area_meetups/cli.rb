# CLI Controller
class LocalAreaMeetups::CLI

  def call
    list_meetups
    menu
    goodbye
  end

  def list_meetups
    puts "Local Area Meetups"
    @meetups = LocalAreaMeetups::Meetups.info
    @meetups.each.with_index(1) do |meetup, i|
      puts "#{i}. #{meetup.group_name} - #{meeups.date_time} - #{meetup.location}"
    end
  end

  def menu
    input = nil
    while input != "exit"
    puts "Enter the number of the meetup you'd like more info on or type exit to enter: "
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on meetup 1..."
      when "2"
        puts "More info on meetup 2..."
      end
    end
  end
end
