class LocalAreaMeetups::Scraper
##scrapes meetup categories###
	def self.scrape_categories
        categories_list = []

        doc = Nokogiri::HTML(open("https://www.meetup.com/"))
        categories = doc.css("div.exploreHome-categories-card")

		categories.each_with_index{|category, index|
            if index < 25 then
                c = LocalAreaMeetups::Category.new(category.css("h4").text)
                c.name = category.css("h4").text
				c.href = category.css("a").attribute("href").value
                categories_list[index] = c
            end
        }
        categories_list
    end
##sccrapes category urls
	def self.category_urls
		category_urls = []
		doc = Nokogiri::HTML(open("https://www.meetup.com/"))
		urls = doc.css("div.exploreHome-categories-card")
		cats_urls = urls.css("a").attribute("href").value
		category_urls << cats_urls
		category_urls
	end
##scrapes first level of meetup information - group name and the number of members
	def self.scraped_meetups(cat_url)
		meetup_list = []
		doc = Nokogiri::HTML(open("#{cat_url}"))
		details = doc.css(".groupCard")
		details.each_with_index{|info, index|
			if index < 10 then
				new_info = LocalAreaMeetups::Meetup.new(name)
				new_info.name = info.search("h3").text.strip
				new_info.members = info.search("p").text.strip
				new_info.url = info.search("a").attribute("href").value
				meetup_list[index] = new_info
			end
		}
		meetup_list
	end

	#scraped individual meetup groups
	def self.meetup_details(url)
		href = ""
		LocalAreaMeetups::Meetup.all.find {|group| group = group.href if group.url == url}

		group_page = Nokogiri::HTML(open("href"))
		puts ""
		puts "Here is more information about Hikers"
		puts ""
		puts "MEETUP INFORMATION"
		new_details.name = details.search("a.eventCardHead--title").first.text
		new_details.status = details.search(".eventStatusIndicator-status").first.text
		new_details.date_time = details.search("span.eventTimeDisplay-startDate").first.text
		new_details.venue_name = details.search(".venueDisplay").css("p").first.text
		new_details.address = details.search("p").css(".venueDisplay-venue-address").first.text
		puts ""
		puts "MEETUP DETAILS"
		new_details.summary = details.search(".eventCard--MainContent--description").first.text
	end
end




		#meetup_list_details = []
		#doc = Nokogiri::HTML(open("meetup_url"))
		#details = doc.css("div.flex-item")
		#details.each_with_index{|info, i|
		#	if i < 10 then
		#		new_details = LocalAreaMeetups::Meetup.new(name)

		#		meetup_list_details[index] = new_details
		#	end
		#}
		#meetup_list_details
	#end
