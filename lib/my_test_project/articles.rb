require 'pry'
require 'nokogiri'
require 'httparty'
require 'open-uri'



# We need to take from Scraper and be able to collect the data

class Articles

    attr_accessor :sport, :number, :article_title, :article_body1, :article_body2, :title1, :title2, :titles_array
    
    @@titles_array = []
    @@all = []
    
    def initialize(sport, number)
        @sport = "#{sport}"
        @number = number
        @article_body1
        @article_body2
        @title1
        @title2
        @@all << self
        
        
        # binding.pry
    end
    
        def self.all
           @@all
        end
    
        def self.reset
            @@all.clear
            @@titles_array.clear
        end
        
        def titles_array
            puts @@titles_array
        end
    
        def title1
            @title1 = Scraper.new(@sport).get_article(@number-1)

           @@titles_array << @title1
        end

        def title2
            @title2 = Scraper.new(@sport).get_article(@number)

           @@titles_array << @title2
        
        end
        
        
        def article_body1
            @article_body1 = Scraper.new(@sport).story_body(@number-1)
            @article_body1
        end
        
        
        def article_body2
            @article_body2 = Scraper.new(@sport).story_body(@number)
            @article_body2
        end
        
end


    
    


