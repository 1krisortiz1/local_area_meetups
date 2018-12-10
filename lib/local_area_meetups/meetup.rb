class LocalAreaMeetups::Meetup
  attr_accessor :category, :name, :members, :url

  @@all = []

  def initialize(name)
    @name = name
    @members = members
    @url = url
    @category = []
  end

  def category=(category)
    @category = category
    category.add_meetup(self) if !category.meetups.include?(self)
  end

  def self.find_by_name(category)
    self.all.detect{|cat| cat.category == category}
  end

    def self.all
        @@all
    end

    def save
        @@all << self
    end
end
