class LocalAreaMeetups::Meetup

  attr_accessor :group_name, :url, :category, :member
  @@all = []

  def self.all
    @@all
  end

  def save #instance method
    @@all << self
  end

  def find_by_name(name)
    self.all.detect{|o| o.name == name}
  end

  def initialize(group_name, url, category, members)
    @group_name = group_name
    @url = url
    @category = LocalAreaMeetups::Category.find_by_name(category)
    @members = members
    save
  end
end
