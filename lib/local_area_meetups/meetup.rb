class LocalAreaMeetups::Meetup
  attr_accessor :group_name, :category, :members

  @@all = []

  def self.new_from_index_page(cat)
    self.new(
      cat.css("h3").text,
      "https://www.meetup.com/find/#{cat}",
      cat.css("p").text,
    )
  end

  def initialize(group_name = nil, members = nil)
    @group_name = group_name
  #  @category = LocalAreaMeetups::Category.find_by_name(category)
    @members = members
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(cat)
    self.all[cat-1]
  end

  def group_name
    @group_name ||=doc.css("h3").text.strip
  end

  def members
    @members ||=doc.css("p").text.strip
  end

  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end
end
