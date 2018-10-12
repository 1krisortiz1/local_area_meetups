class LocalAreaMeetups::Meetup

  def self.category_meetups
    puts <<~DOC
    1. Meetup_1
    2. Meetup_2
    3. Meetup_3
    4. Meetup_4
    DOC

    meetup_1 = self.new
    meetup_1.name = "Hiking with Us!"
    meetup_1.group_name = "Ladies Hike"
    meetup_1.meetup_location = "South Mountain Park"
    meetup_1.meetup_date_and_time = "Oct 12 at 7:30 am"

    meetup_2 = self.new
    meetup_2.name = "Hiking rocks!"
    meetup_2.group_name = "Single meetups"
    meetup_2.meetup_location = "Tom's Thumb entrance"
    meetup_2.meetup_date_and_time = "Oct 9 at 7:30 am"

    meetup_3 = self.new
    meetup_3.name = "We've Been Here All Night!"
    meetup_3.group_name = "Overnight Hiking is Our Passion"
    meetup_3.meetup_location = "Boyce Thompson Arboretum"
    meetup_3.meetup_date_and_time = "Oct 7 at 7:30 am, returning Oct 9 at 5 pm"

    meetup_4 = self.new
    meetup_4.name = "Hiking with Us!"
    meetup_4.group_name = "Ladies Hike"
    meetup_4.meetup_location = "South Mountain Park"
    meetup_4.meetup_date_and_time = "Oct 12 at 7:30 am"

    [meetup_1, meetup_2, meetup_3, meetup_4]


  end

end
