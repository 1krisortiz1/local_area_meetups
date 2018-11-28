class LocalAreaMeetups::Scraper

    #def self.scrape_categories
    #    categories_listed = scrape_categories.map(&:text)[0..-13]
    #end

	def self.scrape_categories
        categories_list = []
        doc = Nokogiri::HTML(open("https://www.meetup.com/"))
        categories = doc.css("div.exploreHome-categories-card")
        categories.each_with_index{|category, index|
            if index < 20 then
                new_category = LocalAreaMeetups::Category.new(name)
                new_category.name = category.css("h4").text
                categories_list[index] = new_category
            end
        }
        categories_list
    end

	def self.list_meetups(category)
		doc = Nokogiri::HTML(open("https://www.meetup.com/find/#{category}"))
        meetup_info = doc.css(".groupCard")
        meetup_info.each do |info|
            name = info.css(".groupCard .itemprop").text
            members = info.css(".groupCard .small ellipsize")
            url = info.css("a").css("href")
        meetup = LocalAreaMeetups::Meetup.new(name)
        LocalAreaMeetups::Meetup.all << meetup
        #binding.pry
	   end
   end
 end
