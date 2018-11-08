class LocalAreaMeetups::Scraper

  def self.scrape_categories
    puts "scraping"
    doc = Nokogiri::HTML(open("https://www.meetup.com"))
    names = doc.search(".gridList-item").map(&:text)[0..-13]
  end

  def self.scrape_meetups(category)
		doc = Nokogiri::HTML(open("https://www.meetup.com/find/#{category}"))
		doc.css(".groupCard tileGrid-tile noRatings").each do |meetup|
    m = LocalAreaMeetups::Meetup.new
		m.group_name = meetup.css("h3 .padding-none inline-block loading").text.strip
		m.members = doc.search('p').map(&:text)
		m.url = "https://www.meetup.com/find/#{category}"
		end
	end
end
