require 'nokogiri'
require 'open-uri'
require 'pry'
require 'httparty'


class Scraper
BASE_URL = 'https://www.espn.com/'


def get_page(sport)
    url = BASE_URL + "#{sport}"
    unparsed_url = HTTParty.get(url)
    parse_page = Nokogiri::HTML(unparsed_url)
    binding.pry
end

  



end