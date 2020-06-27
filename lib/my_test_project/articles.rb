require 'pry'
require 'nokogiri'
require 'httparty'
require 'open-uri'



# We need to take from Scraper and be able to collect the data

class Articles

    attr_accessor :sport, :number, :article_title, :article_body


    @@all = []
    
    def initialize(sport, number)
        @sport = "#{sport}"
        @number = number
        @@all << self
    end

    def selt.titles
        # An array consisting of the titles of the articles tied to the page id array integers. 
    
    end

    
        def self.all
            @@all
        end
    
        def self.reset
            @@all.clear
        end

        def article_body
            puts Scraper.new(@sport).get_article(@number)      
        end

end

    # counter = 0
    # while counter < 1 
            
        #     # parsed_story_url.css('div.article-body p').text.split('.').uniq 
        #     parsed_story_url.css('div.article-body p').text.gsub('.', '. ').gsub('?', '? ')
        #     # ^^ This  code takes the text and formats it closer to readable format.
        #     counter += 1
     
    
    


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