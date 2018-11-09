class LocalAreaMeetups::Scraper

  def self.scrape_categories
    puts "scraping"
    doc = Nokogiri::HTML(open("https://www.meetup.com"))
    names = doc.search(".gridList-item").map(&:text)[0..-13]
  end


  ####################Meetup Scraper#######################

  def self.get_meetup_page
    doc = Nokogiri::HTML(open("https://www.meetup.com"))
    n = doc.search(".gridList-item")[0..-13]
  end

  def self.get_meetup_links
    l = self.get_meetup_page
    link = l.css(".exploreHome-categories-card")
    #to collect all of the href values at once.
    hrefs = link.css(".exploreHome-categories-card a").map { |anchor| anchor["href"] }
  end

  def self.make_meetups(group_name = nil, url = nil, category = nil, members = nil)
      self.get_meetup_links.each do |links|
        meetup = LocalAreaMeetups::Meetup.new
        meetup.group_name = links.search("h3 .padding-none inline-block loading").text.strip
        meetup.members = links.search('p').map(&:text)
        meetup.url = "#{links}"
    end
  end

  def print_meetups
    self.make_meetups
    LocalAreaMeetups::Meetup.all.each do |meetup|
      if meetup.group_name
        puts "Group Name: #{meetup.group_name}"
        puts "  Group Members: #{meetup.members}"
        puts "  Group URL: #{meetup.url}"
      end
    end
  end

  #def self.scrape_meetups(category)
		#doc = Nokogiri::HTML(open("https://www.meetup.com/find/#{category}"))
		#doc.css(".groupCard tileGrid-tile noRatings").each do |meetup|
    #m = LocalAreaMeetups::Meetup.new
		#m.group_name = meetup.css("h3 .padding-none inline-block loading").text.strip
		#m.members = doc.search('p').map(&:text)
		#m.url = "https://www.meetup.com/find/#{category}"
		#end
	#end
end
