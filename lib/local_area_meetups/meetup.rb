class LocalAreaMeetups::Meetup
  attr_accessor :category, :name, :members, :url

  @@all = []

  def initialize(name)
    @name = name
    @members = members
    @url = url
    save
  end

  def self.all
        @@all
    end

    def save
        @@all << self
    end
end
