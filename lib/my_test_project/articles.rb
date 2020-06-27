require 'pry'
require 'nokogiri'
require 'httparty'
require 'open-uri'



# We need to take from Scraper and be able to collect the data

class Articles

    attr_accessor :sport, :number, :article_title, :article_body, :titles

    @@titles_array = []
    @@all = []
    
    def initialize(sport, number)
        @sport = "#{sport}"
        @number = number - 1
        @@all << self
        @titles 
        @article_body
        @@titles_array << @titles
        # binding.pry
    end
    
        def self.all
           @@all
        end
    
        def self.reset
            @@all.clear
        end
        
        def self.all_titles
            @@titles_array
        end
    
        def titles
            @titles = Scraper.new(@sport).get_article(@number)

            @titles
        end

        
        
        
        
        
        def article_body
            @article_body = Scraper.new(@sport).story_body(@number)
            puts @article_body
        end
        
end


    
    


