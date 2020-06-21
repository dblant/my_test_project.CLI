

require 'nokogiri'
require 'open-uri'
require 'httparty'
require 'json'
require 'pry'


class Scraper
BASE_URL = 'https://www.espn.com/'

attr_reader: :article_title

def get_page_headlines(sport)
    url = BASE_URL + "#{sport}"
    unparsed_url = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_url)

    parsed_page.css('div.headlineStack').each do |headlines|
       page_id = headlines.css('section ul li a')[0].attributes["href"].text.split("/")[5] 
        # ^^ This gets the id for the page for the article.  We can use this to get the text from the h1 so that we can use the text for our title.
                story_url = url + "/story/_/id/" + page_id
                unparsed_story_url = HTTParty.get(story_url)
                parsed_story_url = Nokogiri::HTML(unparsed_story_url)
                # ^^ This gets us to the story page where we can take the title text and assign it to the link we will create
              @article_title =  parsed_story_url.css('header.article-header h1').text
                # ^^ This retrieves the title of the article
                    binding.pry
                

    end


    # This method should return the list of headlines from each sport page.
end

  



end