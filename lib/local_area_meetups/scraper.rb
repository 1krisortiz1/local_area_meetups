class LocalAreaMeetups::Scraper


####################Category Scraper#######################
  def self.scrape_categories
    puts "scraping"
    doc = Nokogiri::HTML(open("https://www.meetup.com"))
    names = doc.search(".gridList-item").map(&:text)[0..-13]
  end
  ####################Meetup Scraper#######################
  def self.scrape_meetups(category)
    category =  "Tech"
		doc = Nokogiri::HTML(open("https://www.meetup.com/find/#{category}"))
    group = doc.search("h3").map(&:text).each.with_index(1) do |meetup, i|
      puts "#{i}. #{meetup}"
    end
	end

    def self.scrape_groups#(groups)
      puts "List of group info will be here:"
      puts "1. hikers hike"
      puts "2. I love to climb"
    end

      #groups.each_with_index(1) do |group_info, i|
      #  puts "#{i}. #{group_info.group_name}"
      #  puts "          #{group_info.member}"
      #  puts "          #{group_info.url}"
      #end
      #binding.pry
	  #end
end
