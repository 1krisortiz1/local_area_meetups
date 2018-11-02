class LocalAreaMeetups::Meetup
  attr_accessor :group_name, :url, :category

  def find_by_category(category)
    @@all.find { |meetup| meetup.category = category }
  end
end 
