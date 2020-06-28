require 'pry'


class EspnCLI

    attr_accessor :article

    def initialize
        menu
    
    end

    def menu
        
        input = ""

        puts ""
        puts "Welcome to the Sports Article Reader!"
        sleep(1.5)
        puts "Please select a sport:"
        puts ""
        puts 'NFL',"", 'NBA', "", 'NHL', "", 'MLB', "", 'GOLF', "", 'SOCCER'

        input = gets.strip.downcase
        
        case input
        when 'nfl'
            nfl_headlines
        when 'nba'
            nba_headlines
        when 'nhl'
            nhl_headlines
        when 'mlb'
            mlb_headlines
        when 'golf'
            golf_headlines
        when 'soccer'
            soccer_headlines        
        end

    end


    def nfl_headlines
        puts ""
        puts "Which article would you like to read? Please enter 1 or 2."
        puts ""
        puts "1:"
        puts  Articles.new("nfl", 1).title1
        puts "2:"
        puts  Articles.new("nfl", 1).title2

        input = gets.strip.to_i

        case input
        when 1
          puts ""
          puts  Articles.new("nfl", 1).article_body1
          puts ""
        when 2 
          puts ""
          puts  Articles.new("nfl", 1).article_body2
          puts ""
        end

    end
    
    def nba_headlines
        puts ""
        puts "Which article would you like to read? Please enter 1 or 2."
        puts ""
        puts "1:"
        puts  Articles.new("nba", 1).title1
        puts "2:"
        puts  Articles.new("nba", 1).title2

        input = gets.strip.to_i

        case input
        when 1
          puts ""
          puts  Articles.new("nba", 1).article_body1
          puts ""
        when 2 
          puts ""
          puts  Articles.new("nba", 1).article_body2
          puts ""
        end
    end


    def nhl_headlines
        puts Articles.new("nhl", 1).title1
        puts Articles.new("nhl", 1).title2
    end

    def mlb_headlines
        puts Articles.new("mlb", 1).title1
        puts Articles.new("mlb", 1).title2
    end

    def golf_headlines
        puts Articles.new("golf", 1).title1
        puts Articles.new("golf", 1).title2
    end

    def soccer_headlines
        puts Articles.new("soccer", 1).title1
        puts Articles.new("soccer", 1).title2
    end



end


# Intitialize with a menu of sport options
# Ask for input of a sport. Present error and return to list if selection is not valid
# Strip selection and send to BASE URL in Scraper as it's argument.
# Present next list of Article titles that the user can choose from.
# Ask for input of a number.  Present error and return to list if selection is not valid
# Present Title of the article as well as the body of the story.
# Ask for input to be able to return to the menu or exit the program.