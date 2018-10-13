class LocalAreaMeetups::Category
  attr_accessor :name, :url

  def self.categories
    #doc = Nokogiri::HTML(open("https://www.meetup.com"))
    #category_name = doc.search("li.gridList-item").text
    #binding.pry
  #end
    category_1 = self.new
    category_1.name = "Outdoors & Adventure"
    category_1.url = "https://www.meetup.com/find/outdoors-adventure/"

    category_2 = self.new
    category_2.name = "Tech"
    category_2.url = "https://www.meetup.com/find/tech/"

    [category_1, category_2]
  end
end
