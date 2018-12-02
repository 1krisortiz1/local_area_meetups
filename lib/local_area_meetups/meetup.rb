class LocalAreaMeetups::Meetup
  attr_accessor :category, :name, :members, :url, :status, :meetup_name, :date_time, :venue_name, :address, :summary

  @@all = []

  def initialize(name)
    @name = name
    @members = members
    @url = url
    @status = status
    @meetup_name = meetup_name
    @date_time = date_time
    @venue_name = venue_name
    @address = address
    @summary = summary
    @category = []
  end

  def category=(category)
    @category = category
    category.add_meetup(self) if !category.meetups.include?(self)
  end

    def self.all
        @@all
    end

    def save
        @@all << self
    end
end
