class LocalAreaMeetups::Meetup
  attr_accessor :group_name, :url, :category, :member

  @@all = []

  def initialize(group_name, url, category, members)
    @group_name = group_name
    @url = url
    @category = category
    @members = members
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def find_by_category(category)
    @@all[category]
  end

end
