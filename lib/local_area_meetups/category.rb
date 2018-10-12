class LocalAreaMeetups::Category
  attr_accessor :name

  def self.categories
    category_1 = self.new
    category_1.name = "Outdoors & Adventure"

    category_2 = self.new
    category_2.name = "Tech"

    category_3 = self.new
    category_3.name = "Family"

    category_4 = self.new
    category_4.name = "Health & Wellness"

    [category_1, category_2, category_3, category_4]

  end
end
