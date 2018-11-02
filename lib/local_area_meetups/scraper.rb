class LocalAreaMeetups::Scraper

    def self.scrape_categories
    doc = Nokogiri::HTML(open("https://www.meetup.com"))
    parsed_categories = doc.search("h4").children.text #.exploreHome-categories-title text--bold")
    cleaned_categories = doc.search("h4").children.text.strip.gsub('eT', 'e, T').gsub('hF', 'h, F').gsub('yH', 'y, H').gsub('sS', 's, S').gsub('sL', 's, L').gsub('gP', 'g, P').gsub('yF', 'y, F').gsub('kW', 'k, W').gsub('gL', 'g, L').gsub('eM', 'e, M').gsub('cM', 'c, M').gsub('QF', 'Q, F').gsub('mS', 'm, S').gsub('sB', 's, B').gsub('sA', 's, A').gsub('sD', 's, D').gsub('eP', 'e, P').gsub('sH', 's, H').gsub('sF', 's, F').gsub('yS', 'y, S').gsub('lC', 'l, C').gsub('Your AccountDiscoverMeetupFollow us', '')
    #binding.pry
    numbered_and_ordered_categories = cleaned_categories.gsub(',',"\n").gsub('O', ' 1. O').gsub('Tech', '2. Tech').gsub('Fam', '3. Fam').gsub('Heal', '4. Heal').gsub('Spo', '5. Spo').gsub('Lea', '6. Lea').gsub('Pho', '7. Pho').gsub('Foo', '8. Foo').gsub('Wri', '9. Wri').gsub('Lan', '10. Lan').gsub('Mus', '11. Mus').gsub('Mov', '12. Mov').gsub('LGB', '13. LGB').gsub('Fil', '14. Fil').gsub('Sci', '15. Sci').gsub('Bel', '16. Bel').gsub('Art', '17. Art').gsub('Boo', '18. Boo').gsub('Dan', '19. Dan').gsub('Pet', '20. Pet').gsub('Hobb', '21. Hobb').gsub('Fash', '22. Fash').gsub('Soc', '23. Soc').gsub('Car', '24. Car')
    puts numbered_and_ordered_categories
  end

  def self.scrape_meetups(category)
    doc = Nokogiri::HTML(open("https://www.meetup.com/find/#{category}"))
    text = doc.search("h3").text.strip.gsub("\t", '').gsub("\n\n\n\n", ',')
    meetup = LocalAreaMeetups::Meetup.new
    meetup.group_name = "#{text}"#doc.search("ul.j-groupCard-list a").text
    meetup.url = "https://www.meetup.com/find/#{category}"
    meetup.category = category
    scrape_meetups
    #binding/pry
  end
end
