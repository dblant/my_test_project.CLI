

require 'nokogiri'
require 'open-uri'
require 'httparty'
require 'json'
require 'pry'


class Scraper
BASE_URL = 'https://www.espn.com/'

attr_accessor :url, :unparsed_url, :parsed_page
# attr_reader  :article_title
@@headline_array = []

def get_page_headlines(sport)
    @url = BASE_URL + "#{sport}"
    @unparsed_url = HTTParty.get(url)
    @parsed_page = Nokogiri::HTML(unparsed_url)

    headline_list = []
    counter = 0
    while counter < 6
    # parsed_page.css('div.headlineStack section ul').collect do |headlines|
    parsed_page.css('div.headlineStack section ul').collect do |headlines|
    #    Ruby Take
        page_id = headlines.css('li')[0].attributes['data-story-id'].value
        # ^^ This gets the id for the page for the article.  We can use this to get the text from the h1 so that we can use the text for our title.
        
        story_url = @url + "/story/_/id/" + page_id
        unparsed_story_url = HTTParty.get(story_url)
        parsed_story_url = Nokogiri::HTML(unparsed_story_url)
        # ^^ This gets us to the story page where we can take the title text and assign it to the link we will create
        article_title = parsed_story_url.css('header.article-header h1').text
        
        # ^^ This retrieves the title of the article
        headline_list << article_title
        counter += 1
    end
end
# binding.pry
puts headline_list.uniq
binding.pry
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
        
    
    
