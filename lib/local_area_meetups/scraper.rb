class LocalAreaMeetups::Scraper

  def self.scrape_categories
    puts "scraping"
    doc = Nokogiri::HTML(open("https://www.meetup.com"))
    names = doc.search(".gridList-item").map(&:text)
    names.delete("Sign up")
    names.delete("Log in")
    names.delete("Help")
    names.delete("Groups")
    names.delete("Calendar")
    names.delete("Topics")
    names.delete("Cities")
    names.delete("About")
    names.delete("Meetup Pro")
    names.delete("Careers")
    names.delete("Apps")
    names.delete("API")
    names.each.with_index(1) do |category, i|
      puts "#{i}. #{category}"
    end
  end

  def self.scrape_meetups(category)
    meetups = []
		doc = Nokogiri::HTML(open("https://www.meetup.com/find/#{category}"))
		doc.css(".groupCard tileGrid-tile noRatings").each do |meetup|
    meetup = LocalAreaMeetups::Meetup.new
		meetup.group_name = meetup.css("h3 .padding-none inline-block loading").text.strip.
		meetup.members = doc.search('p').map(&:text)
		meetup.url = "https://www.meetup.com/find/#{category}"
    meetups << meetup
		end
    meetups
	end
end
