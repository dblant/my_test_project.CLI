

require 'nokogiri'
require 'open-uri'
require 'httparty'
require 'json'
require 'pry'


class Scraper
BASE_URL = 'https://www.espn.com/'

attr_reader :article_title, :page_id, :story_url, :unparsed_story_url, :parsed_story_url

def get_page_headlines(sport)
    url = BASE_URL + "#{sport}"
    unparsed_url = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_url)
    parsed_page.css('div.headlineStack').collect do |headlines|
        @page_id = headlines.css('section ul li a')[0].attributes["href"].text.split("/")[5] 
        # binding.pry
    #    Ruby Take
        # ^^ This gets the id for the page for the article.  We can use this to get the text from the h1 so that we can use the text for our title.
                @story_url = url + "/story/_/id/" + page_id
                @unparsed_story_url = HTTParty.get(story_url)
                @parsed_story_url = Nokogiri::HTML(unparsed_story_url)
                # ^^ This gets us to the story page where we can take the title text and assign it to the link we will create
                @article_title =  parsed_story_url.css('header.article-header h1').text
                # ^^ This retrieves the title of the article
                # counter = 0
                # while counter < 1 
                
                # parsed_story_url.css('div.article-body p').text.split('.').uniq 
                # counter += 1
                # # parsed_story_url.css('div.article-body p').text.gsub('.', '. ').gsub('?', '? ')
                # # ^^ This commented code takes the text and formats it closer to readable format.
                # binding.pry
                # end
                
            end
            puts @article_title
            
        end

        
        # This method should return the list of headlines from each sport page.
    end
        
        
        
        
    # counter = 1
    # while counter <1 
    
    # parsed_story_url.css('div.article-body p').text.split('.').uniq 
    # counter += 1
    # parsed_story_url.css('div.article-body p').text.gsub('.', '. ').gsub('?', '? ')
    # ^^ This commented code takes the text and formats it closer to readable format.
    # end
    # ^^Retrieves the body of the article
        # binding.pry
    