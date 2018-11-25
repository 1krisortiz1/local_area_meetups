class LocalAreaMeetups::Meetup
  attr_accessor :category, :name, :members, :url

  @@all = []

  def initialize(name)
    @name = name
    @category = []
  end

  def category=(category)
    @category = category
    category.add_meetup(self) if !category.meetups.include?(self)
  end

	def self.all
		@@all
	end
end
