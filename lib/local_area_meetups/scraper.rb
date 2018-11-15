class LocalAreaMeetups::Scraper


####################Category Scraper#######################
  def self.scrape_categories
    puts "scraping"
    doc = Nokogiri::HTML(open("https://www.meetup.com"))
    names = doc.search(".gridList-item").map(&:text)[0..-13]
  end
  ####################Meetup Scraper#######################
  def self.scrape_meetups(category)
    @category = category
    @meetups = []
		doc = Nokogiri::HTML(open("https://www.meetup.com/find/#{category}"))
    groups = doc.search("div a.display-none").map(&:text)[1..20]
    #@meetups << groups
    #puts @meetups
	end

    def self.scrape_groups#(groups)
      puts "Here is the information you requested:"
      puts ""
      puts "#{Meetup.name}"
      puts "#{Meetup.date_time}"
      puts "#{Meetup.details}"
      puts ""
    end

      #groups.each_with_index(1) do |group_info, i|
      #  puts "#{i}. #{group_info.group_name}"
      #  puts "          #{group_info.member}"
      #  puts "          #{group_info.url}"
      #end
      #binding.pry
	  #end
end
