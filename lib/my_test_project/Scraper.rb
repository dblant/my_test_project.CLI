

require 'nokogiri'
require 'open-uri'
require 'httparty'
require 'pry'


class Scraper
BASE_URL = 'https://www.espn.com/'


def get_page_headlines(sport)
    url = BASE_URL + "#{sport}"
    unparsed_url = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_url)

    parsed_page.css('div.headlineStack').each do |headlines|
       page_id = headlines.css('section ul li a')[0].attributes["href"].text.split("/")[5] 
        # ^^ This gets the id for the page for the article.  We can use this to get the text from the h1 so that we can use the text for our title.
        
        binding.pry
    end


    # This method should return the list of headlines from each sport page.
end

  



end