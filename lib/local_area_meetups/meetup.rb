class LocalAreaMeetups::Meetup
  attr_accessor :category, :url
  def self.current_meetups
    #should return a bunch of instances of Meetup
    #puts <<~DOC
      #1.   Outdoors & adventure
      #2.   Tech
      #3.   Family
      #4.   Health & Wellness
      #5.   Sports & Fitness
      #6.   Learning
      #7.   Photography
      #8.   Food & Drinks
      #9.   Writing
      #10.  Language & Culture
      #11.  Music
      #12.  Movements
      #13.  LGBTQ
      #14.  Film
      #15.  Sci-Fi & Games
      #16.  Beliefs
      #17.  Arts
      #18.  Book Clubs
      #19.  Dance
      #20.  Pets
      #21.  Hobbies & Crafts
      #22.  Fashion & Beauty
      #23.  Social
      #24.  Career & Business
    #DOC
    meetup_1 = self.new
    meetup_1.category = "Outdoors & Adventure"
    #meetup_1.location = "Downtown"
    #meetup_1.group_name = "Hello Kitties"
    meetup_1.url = "https://www.meetup.com/find/outdoors-adventure/"
    #meetup_1.date = "October 12"
    #meetup_1.time = "5 pm"

    meetup_2 = self.new
    meetup_2.category = "Tech"
    #meetup_2.location = "Over Easy"
    #meetup_2.group_name = "Hello World"
    meetup_2.url = "https://www.meetup.com/find/tech/"
    #meetup_2.date = "October 18"
    #meetup_2.time = "8 pm"

    [meetup_1, meetup_2]

  end
end
