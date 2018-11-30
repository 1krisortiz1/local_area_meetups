class LocalAreaMeetups::Category
    attr_accessor :name, :meetups, :href

    @@all = []

    def initialize(name)
      @name = name
      @meetups = []
      @@all << self
    end

    def self.all
      @@all
    end

    def add_meetup(meetup)
      @meetups << meetup
      meetup.category = self if meetup.category != self
    end

  def self.find_by_name(name)
    self.all.detect{|o| o.name == name}
  end
end
