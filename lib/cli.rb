class Cli
    def welcome
        system 'clear'
        puts "Hello"
    end 

    def prompt
        prompt = TTY::Prompt.new
        prompt.ask("What is your name?", default: ENV["USER"])
# => What is your name? (piotr)
    end 

    def mood
        prompt = TTY::Prompt.new

    end 

end 