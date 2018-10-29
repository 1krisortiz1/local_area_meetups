class LocalAreaMeetups::Scraper

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
