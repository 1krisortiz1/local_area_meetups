class LocalAreaMeetups::Meetup
  attr_accessor :group_name, :url, :category, :member

  @@all = []

  def initialize(group_name, url, category, members)
    @group_name = group_name
    @url = url
    @category = LocalAreaMeetups::Category.find_by_name(category)
    @members = members
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_by_category(category)
    @@all.detect {|meetup| meetup.category == category}
  end

end
