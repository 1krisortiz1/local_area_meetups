class LocalAreaMeetups::Meetup
  attr_accessor :group_name, :url, :category, :member

  @@all = []

  def initialize(group_name = nil, url = nil, category = nil, members = nil)
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

  def self.find_by_name(category)
    @@all.detect {|meetup| meetup.category == category}
  end

end
