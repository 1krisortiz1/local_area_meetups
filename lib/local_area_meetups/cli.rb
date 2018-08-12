# CLI Controller
class LocalAreaMeetups::CLI

  def call
    list_meetups
    menu
    goodbye
  end

  def list_meetups
    puts "Local Area Meetups"
    puts <<-DOC.gsub /^\s*/, ''
      1. phoenix ladie code
      2. Java coding club
    DOC
  end

  def menu
    puts "Enter the number of the meetup you'd like more info on or type exit to enter: "
    while input != "exit"
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
