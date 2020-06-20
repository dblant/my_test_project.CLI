

require 'nokogiri'
require 'open-uri'
require 'httparty'
require 'pry'


class Scraper
BASE_URL = 'https://www.espn.com/'


def get_page_headlines(sport)
    url = BASE_URL + "#{sport}"
    unparsed_url = HTTParty.get(url)
    parse_page = Nokogiri::HTML(unparsed_url)
    binding.pry
    # This method should return the list of headlines from each sport page.
end

  



end