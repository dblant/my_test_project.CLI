

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

    parsed_page.css('div.headlineStack').each do |headline|
        

        binding.pry
    end


    # This method should return the list of headlines from each sport page.
end

  



end