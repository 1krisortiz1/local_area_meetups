class LocalAreaMeetups::Scraper
##scrapes meetup website and returns array of categories###
	def self.get_categories
        categories_list = []
        doc = Nokogiri::HTML(open("https://www.meetup.com/"))
        categories = doc.css("div.exploreHome-categories-card")
		categories.each_with_index{|category, index|
            if index < 25 then
                c = LocalAreaMeetups::Category.new(category.css("h4").text)
                #c.name = category.css("h4").text
				c.href = category.css("a").attribute("href").value
                categories_list[index] = c
            end
        }
        categories_list
    end
##scrapes category urls
	def self.get_category_urls
		category_urls = []
		doc = Nokogiri::HTML(open("https://www.meetup.com/"))
		urls = doc.css("div.exploreHome-categories-card")
		cats_urls = urls.css("a").attribute("href").value
		category_urls << cats_urls
		category_urls
	end
##scrapes first level of meetup information - group name and the number of members
##returns an array with group name and members
	def self.get_groups(cat_url)
		meetup_list = []
		doc = Nokogiri::HTML(open("#{cat_url}"))
		details = doc.css(".groupCard")
		details.each_with_index{|info, index|
			if index < 10 then
				new_info = LocalAreaMeetups::Meetup.new(info.search("h3").text.strip)
				new_info.name = info.search("h3").text.strip
				new_info.members = info.search("p").text.strip
				new_info.url = info.search("a").attribute("href").value
				meetup_list[index] = new_info
			end
		}
		meetup_list
	end

end
