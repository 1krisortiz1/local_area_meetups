class LocalAreaMeetups::Scraper

    def self.scrape_categories
    doc = Nokogiri::HTML(open("https://www.meetup.com"))
    doc.search("h4.text--bold").first.text #.exploreHome-categories-title text--bold")
    #binding.pry
    #doc.search("h4").each do |category_list, i|
    #  puts "#{i}. #{category_list}"
    #end
    #category.name = doc.search("h1.text--display1").text.gsub("\n"," ")
    #category.url = "https://www.meetup.com/find/outdoors-adventure"
    #category.info = doc.search("h3.inline-block").text.strip.gsub("\n", ",").gsub("\t", "")
    scrape_categories
    #binding.pry
  end

  def self.scrape_meetups(category)
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/#{category}"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
    meetup = LocalAreaMeetups::Meetup.new
    meetup.group_name = "#{text}"#doc.search("ul.j-groupCard-list a").text
    meetup.url = "https://www.meetup.com/find/#{category}"
    meetup.category = category
    scrape_meetups
    #binding/pry
  end
end
