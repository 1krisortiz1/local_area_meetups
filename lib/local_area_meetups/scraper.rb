class LocalAreaMeetups::Scraper

  def self.get_page
    Nokogiri::HTML(open("https://www.meetup.com"))
  end
####################Category Scraper#######################
  def self.scrape_categories
    get_page.search(".gridList-item").map(&:text)[0..-13]
  end
  ####################Meetup Scraper#######################
  def self.scrape_meetup_urls
    main_url = "https://www.meetup.com/find/" + get_page.css(".flex-item").css("a.link.text--bold").first.attributes["class"].value.each do |m|
      puts "#{m}"
    binding.pry 
  end
  end
      #a href="https://www.meetup.com/find/" class="link text--bold"> == $0
  def self.make_meetups
    scrape_meetup_urls.each do |cat|
#      binding.pry
      LocalAreaMeetups::Meetup.new_from_index_page(cat)
    #  binding.pry 
    end
  end
end
