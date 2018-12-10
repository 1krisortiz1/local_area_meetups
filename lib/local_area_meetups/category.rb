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

    def save
        @@all << self
    end

    def self.find(id)
        self.all[id-1]
    end

    def add_meetup(meetup)
      @meetups << meetup
      meetup.category = self if meetup.category != self
    end
end
