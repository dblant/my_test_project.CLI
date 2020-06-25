require 'pry'
require 'nokogiri'
require 'httparty'
require 'open-uri'



# We need to take from Scraper and be able to collect the data

class Articles
    HEADLINE = Scraper.get_page_headlines
    
    def initialize
        counter = 0
        while counter < 1 
            
            # parsed_story_url.css('div.article-body p').text.split('.').uniq 
            parsed_story_url.css('div.article-body p').text.gsub('.', '. ').gsub('?', '? ')
            # ^^ This  code takes the text and formats it closer to readable format.
            counter += 1
        end
    end
    

end

# # get text from articles
# @article_title =  parsed_story_url.css('header.article-header h1').text
# # ^^ This retrieves the title of the article
# counter = 1
# while counter <1 

# parsed_story_url.css('div.article-body p').text.split('.').uniq 
# counter += 1
# # parsed_story_url.css('div.article-body p').text.gsub('.', '. ').gsub('?', '? ')
# # ^^ This commented code takes the text and formats it closer to readable format.
# end
# # ^^Retrieves the body of the article
#     # binding.pry