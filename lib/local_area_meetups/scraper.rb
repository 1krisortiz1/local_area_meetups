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
    get_page.css("a").attribute("href").text
    binding.pry
  end
    #a href="https://www.meetup.com/find/" class="link text--bold"> == $0
  def self.make_meetups
    scrape_categories.each do |cat|
#      binding.pry
      LocalAreaMeetups::Meetup.new_from_index_page(cat)
    end
  end
end
