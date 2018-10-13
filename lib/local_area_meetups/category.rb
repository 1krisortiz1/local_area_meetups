class LocalAreaMeetups::Category
  attr_accessor :name

  def self.categories
    doc = Nokogiri::HTML(open("https://www.meetup.com"))
    category_name = doc.search("h4.text--bold").children
    #binding.pry



  end
end
