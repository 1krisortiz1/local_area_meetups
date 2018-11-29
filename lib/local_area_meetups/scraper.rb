class LocalAreaMeetups::Scraper
	def self.scrape_categories
        categories_list = []
        doc = Nokogiri::HTML(open("https://www.meetup.com/"))
        categories = doc.css("div.exploreHome-categories-card")
		categories.each_with_index{|category, index|
            if index < 25 then
                new_category = LocalAreaMeetups::Category.new(name)
                new_category.name = category.css("h4").text
				new_category.url = category.css("a").attribute("href").value
                categories_list[index] = new_category
            end
        }
        categories_list
    end

	def self.category_urls
		category_urls = []
		doc = Nokogiri::HTML(open("https://www.meetup.com/"))
		urls = doc.css("div.exploreHome-categories-card")
		cats_urls = urls.css("a").attribute("href").value
		category_urls << cats_urls
		category_urls
	end

	def self.scraped_meetups(cat_url)
		meetup_list = []
		doc = Nokogiri::HTML(open("#{cat_url}"))
		details = doc.css(".groupCard--content")
		details.each_with_index{|info, index|
			if index < 5 then
				new_info = LocalAreaMeetups::Meetup.new(name)
				new_info.name = details.search("h3").text.strip
				new_info.members = details.search("p").text.strip
				meetup_list[index] = new_info
			end
		}
		meetup_list
	end

	def self.meetup_details(group_url)
		meetup_list_details = []
		doc = Nokogiri::HTML(open("meetup_url"))
		details = doc.css("div.flex-item")
		details.each_with_index{|info, i|
			if i < 5 then
				new_details = LocalAreaMeetups::Meetup.new(name)
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
				meetup_list_details[index] = new_details
			end
		}
		meetup_list_details
	end
end
