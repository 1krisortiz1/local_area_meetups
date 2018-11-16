class LocalAreaMeetups::Meetup

  attr_accessor :group_name, :url, :category, :member

  @@all = []

  def initialize(group_name, url, category, members)
    @group_name = Meetup.group_name
    @url = Meetup.url
  #  @category = LocalAreaMeetups::Category.find_by_name(category)
    @members = Meetup.members
    @@all << self
  end

  def self.all
    @@all
  end

  def find_by_name(name)
    self.all.detect{|o| o.name == name}
  end
end
