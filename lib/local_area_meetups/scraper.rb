class LocalAreaMeetups::Scraper

    def self.get_page
        Nokogiri::HTML(open("https://www.meetup.com/"))
    end

    def self.scrape_categories
        categories = get_page.search(".gridList-item").map(&:text)[0..-13]

    end

	def self.scrape_categories_details
		cats = get_page.css(".gridList-item")
		cats.each do |cat|
            name = cat.css('h4.text--bold').text
	        url = cat.css('a')[0].attributes["href"].value
        category = LocalAreaMeetups::Category.new(name, url)
        LocalAreaMeetups::Category.all << category
		end
    puts ""
    end

    def self.open_cat_page(category)
        ##
        #meetups = LocalAreaMeetups::Meetup.
        category_url = ' '
        meeups.each do |info|
            category_url = "#{info[category].url}"
        end
        category_url
    end

	def self.scrape_cat_meetup_details(category)
		doc = Nokogiri::HTML(open("https://www.meetup.com/find/#{category}"))
        meetup_info = doc.css(".groupCard")
        meetup_info.each do |info|
            name = info.css(".groupCard .itemprop").text
            members = info.css(".groupCard .small ellipsize")
            url = info.css("a").css("href")
        meetup = LocalAreaMeetups::Meetup.new(name)
        LocalAreaMeetups::Meetup.all << meetup
        binding.pry
	   end
   end
 end
