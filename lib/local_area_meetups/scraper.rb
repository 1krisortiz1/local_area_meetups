class LocalAreaMeetups::Scraper

    def self.get_page
        Nokogiri::HTML(open("https://www.meetup.com/"))
    end

    def self.scrape_categories
        get_page.search(".gridList-item").map(&:text)[0..-13]
    end

	def self.scrape_categories_details
		scraped_cats = []
		cats = get_page.css(".gridList-item")
		cats.each do |cat|
			cat_hash = {
				:name => cat.css('h4.text--bold').text,
				:url => cat.css('a')[0].attributes["href"].value,
			}
		scraped_cats << cat_hash
		end
		 scraped_cats
         #scraped_cats.map{|x| x[:url]}  #extracts only urls
         binding.pry
    puts ""
    end

	def self.cat_urls
        scraped_uls = []
		doc = Nokogiri::HTML(open("#{@meetup_url}"))
            data= doc.css('a')[0].attributes["href"].value.each do |dets|
                meetup_hash = {
                    :name => dets.css(".groupCard .data-name").text,
                    :members => dets.css(".groupCArd .small ellipsize"),
                    :url => dets.css('a')
                }
                scraped_uls << meetup_hash
            end
            scraped_uls
            #binding.pry
	end

	def self.scrape_cat_meetup_details(url)
		doc = Nokogiri::HTML(open(url))
		meetup_details = {
			:name => doc.css(".groupCard .itemprop").text,
			:members => doc.css(".groupCard .small ellipsize"),
			:url => doc.css("a").css("href")
		}
	LocalAreaMeetups::Meetup.add_meetup_details(meetup_detals, meetup_id)
	end
end
