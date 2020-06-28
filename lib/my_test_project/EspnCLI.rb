


class EspnCLI

    attr_accessor :article

    def initialize
        menu
    
    end

    def menu
        
        input = ""

        puts '
        ██████╗ ███████╗ █████╗ ██████╗     
        ██╔══██╗██╔════╝██╔══██╗██╔══██╗    
        ██████╔╝█████╗  ███████║██║  ██║    
        ██╔══██╗██╔══╝  ██╔══██║██║  ██║    
        ██║  ██║███████╗██║  ██║██████╔╝    
        ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═════╝     
                                            
        ███████╗██████╗  ██████╗ ███╗   ███╗
        ██╔════╝██╔══██╗██╔═══██╗████╗ ████║
        █████╗  ██████╔╝██║   ██║██╔████╔██║
        ██╔══╝  ██╔══██╗██║   ██║██║╚██╔╝██║
        ██║     ██║  ██║╚██████╔╝██║ ╚═╝ ██║
        ╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝
                                            
        ███████╗███████╗██████╗ ███╗   ██╗  
        ██╔════╝██╔════╝██╔══██╗████╗  ██║  
        █████╗  ███████╗██████╔╝██╔██╗ ██║  
        ██╔══╝  ╚════██║██╔═══╝ ██║╚██╗██║  
        ███████╗███████║██║     ██║ ╚████║  
        ╚══════╝╚══════╝╚═╝     ╚═╝  ╚═══╝  
                                            '
                                            
                                            
                                            
                                            
                                            
                                            
                                            
        

        puts ""
        puts "Welcome to the Sports Article Reader!"
        sleep(1.5)
        puts "Please select a sport:"
        puts ""
        puts 'NFL',"", 'NBA', "", 'NHL', "", 'MLB', "", 'GOLF', "", 'SOCCER'
        puts ""
        puts ""
        puts "Enter 'Exit' to exit"

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
        when 'exit'
            exit     
        else
            puts ""
            puts "That selection was juuuust a bit outside."
            puts ""
            puts "Let's try that play again."
            puts ""
            sleep(2)
            menu
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
        when 'exit'
            exit
        else
           puts "Invalid Selection"
            nfl_headlines
        end
        puts ""
        puts ""
        to_menu

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
        else
            puts "Invalid Selection"
            nba_headlines
        end
        puts ""
        puts ""
        to_menu
    end


    def nhl_headlines
        puts ""
        puts "Which article would you like to read? Please enter 1 or 2."
        puts ""
        puts "1:"
        puts  Articles.new("nhl", 1).title1
        puts "2:"
        puts  Articles.new("nhl", 1).title2

        input = gets.strip.to_i

        case input
        when 1
          puts ""
          puts  Articles.new("nhl", 1).article_body1
          puts ""
        when 2 
          puts ""
          puts  Articles.new("nhl", 1).article_body2
          puts ""
        else
            puts "Invalid Selection"
            nhl_headlines
        end
        puts ""
        puts ""
        to_menu
    end

    def mlb_headlines
        puts ""
        puts "Which article would you like to read? Please enter 1 or 2."
        puts ""
        puts "1:"
        puts  Articles.new("mlb", 1).title1
        puts "2:"
        puts  Articles.new("mlb", 1).title2

        input = gets.strip.to_i

        case input
        when 1
          puts ""
          puts  Articles.new("mlb", 1).article_body1
          puts ""
        when 2 
          puts ""
          puts  Articles.new("mlb", 1).article_body2
          puts ""
        else
           puts "Invalid Selection"
            mlb_headlines
        end
        puts ""
        puts ""
        to_menu
    end

    def golf_headlines
        puts ""
        puts "Which article would you like to read? Please enter 1 or 2."
        puts ""
        puts "1:"
        puts  Articles.new("golf", 1).title1
        puts "2:"
        puts  Articles.new("golf", 1).title2

        input = gets.strip.to_i

        case input
        when 1
          puts ""
          puts  Articles.new("golf", 1).article_body1
          puts ""
        when 2 
          puts ""
          puts  Articles.new("golf", 1).article_body2
          puts ""
        else
           puts "Invalid Selection"
            golf_headlines
        end
        puts ""
        puts ""
        to_menu
    end

    def soccer_headlines
        puts ""
        puts "Which article would you like to read? Please enter 1 or 2."
        puts ""
        puts "1:"
        puts  Articles.new("soccer", 1).title1
        puts "2:"
        puts  Articles.new("soccer", 1).title2

        input = gets.strip.to_i

        case input
        when 1
          puts ""
          puts  Articles.new("soccer", 1).article_body1
          puts ""
        when 2 
          puts ""
          puts  Articles.new("soccer", 1).article_body2
          puts ""
        else
           puts "Invalid Selection"
            soccer_headlines
        end
        puts ""
        puts ""
        to_menu
    end

    def to_menu
        puts ""
        puts ""
        puts "Would you like to read another article?  (Y/N)"
        puts ""
        puts ""
        puts "Enter 'Exit' to exit."
        input = gets.strip.downcase
        case input
        when 'y'
            menu
        when 'n'
            puts ""
            puts "GOODBYE!"
            exit
        when 'exit'
            exit
        else
            puts ""
            puts ""
            puts "INVALID RESPONSE. Please enter 'Y' or 'N'."
            to_menu
        end
    
    end


end


# Intitialize with a menu of sport options
# Ask for input of a sport. Present error and return to list if selection is not valid
# Strip selection and send to BASE URL in Scraper as it's argument.
# Present next list of Article titles that the user can choose from.
# Ask for input of a number.  Present error and return to list if selection is not valid
# Present Title of the article as well as the body of the story.
# Ask for input to be able to return to the menu or exit the program.