

require 'nokogiri'
require 'open-uri'
require 'httparty'
require 'json'
require 'pry'


class Scraper
BASE_URL = 'https://www.espn.com/'

attr_accessor :url, :unparsed_url, :parsed_page, :page_id, :parsed_story_url, :story_body, :sport
# attr_reader  :article_title
@@headline_array = []
@@page_id_array = []


    def initialize(sport)
        @sport = sport
        @url = BASE_URL + @sport
        @unparsed_url = HTTParty.get(@url)
        @parsed_page = Nokogiri::HTML(@unparsed_url)

            
            page_id_list = []
            counter = 0
            while counter < 3
                
                @parsed_page.css('div.headlineStack section ul').each_with_index do |headlines, index|
                #    Ruby Take
                    @page_id = headlines.css('li')[0].attributes['data-story-id'].value
                
                    
                    
                    # ^^ This gets the id for the page for the article.  We can use this to get the text from the h1 so that we can use the text for our title.
                    @@page_id_array << @page_id
                    counter += 1
                end
            
            end
        end
    
    
    
        def get_article(number)
            
            story_url = @url + "/story/_/id/" + @@page_id_array[number]
            unparsed_story_url = HTTParty.get(story_url)
            @parsed_story_url = Nokogiri::HTML(unparsed_story_url)
            # ^^ This gets us to the story page where we can take the title text and assign it to the link we will create
            # ^^ This retrieves the title of the article
            article_title = @parsed_story_url.css('header.article-header h1').text
            counter = 0
            while counter < 1 
                
                # parsed_story_url.css('div.article-body p').text.split('.').uniq 
                @story_body = parsed_story_url.css('div.article-body p').text.gsub('.', '. ').gsub('?', '? ')
                # ^^ This  code takes the text and formats it closer to readable format.
                counter += 1
                # binding.pry
            end
            @@headline_array << article_title
            
            puts "#{@@headline_array.uniq}"
            puts ""
            puts @story_body 
            # binding.pry
        end
    
        

end
        
        

# parsed_page.css('div.headlineStack section ul').collect do |headlines|
    #<Scraper>)*   headlines.css('li')[0].attributes['data-story-id'].value

# headline_list =[]
# headlines.css('section ul.headlineStack__list').each do |headline_item|
#    headline_story_id =  headline_item.css(' li')[0].attributes['data-story-id'].value
#     # headline_item.css(' li')[0].attributes['data-story-id'].value retrieves the story id
#     # headline_item represents the list of items that will be listed under ESPN's Top Headlines list.
#     # This is similar to the parsed_page.css just deeper into the div.
#     # binding.pry
# end
        
    
    
