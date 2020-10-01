class Cli
    def welcome
        system 'clear'
        puts "Hello, Welcome to the jukebox! Tell us how you feel and we will give you a list of songs to match your mood!"
    end 

    def get_name
        prompt = TTY::Prompt.new 
        @username = prompt.ask("Enter your name:")
    end 

    def get_user_mood
        prompt = TTY::Prompt.new
        @user_selection = prompt.select("Welcome #{@username}. How are you feeling?", %w(Happy Sad Motivated Carefree Romantic))
    end 


    def sad_song_list 
        sad_songs = Song.all.select do |song|
            song.lyrics == "sad"
        end 
        sad_songs.map do |song|
            "'#{song.title}' by #{song.artist}"
        end
    end 

    def happy_song_list 
        happy_songs = Song.all.select do |song|
            song.lyrics == "happy"
        end 
        happy_songs.map do |song|
            "'#{song.title}' by #{song.artist}"
        end
    end 

    def carefree_song_list 
        carefree_songs = Song.all.select do |song|
            song.lyrics == "carefree"
        end 
        carefree_songs.map do |song|
            "'#{song.title}' by #{song.artist}"
        end
    end 

    def motivated_song_list 
        motivated_songs = Song.all.select do |song|
            song.lyrics == "motivated"
        end 
        motivated_songs.map do |song|
            "'#{song.title}' by #{song.artist}"
        end
    end 

    def romantic_song_list 
        romantic_songs = Song.all.select do |song|
            song.lyrics == "romantic"
        end 
        romantic_songs.map do |song|
            "'#{song.title}' by #{song.artist}"
        end
    end 


    def recommend_song
        if @user_selection == "Sad"
            puts 'These are some sad songs for you to listen to:'
            puts sad_song_list
        end 
        if @user_selection == "Happy"
            puts 'These are some happy songs for you to listen to:'
            puts happy_song_list
        end 
        if @user_selection == "Carefree"
            puts 'These are some carefree songs for you to listen to:'
            puts carefree_song_list
        end 
        if @user_selection == "Motivated"
            puts 'These are some motivating songs for you to listen to:'
            puts motivated_song_list
        end 
        if @user_selection == "Romantic"
            puts 'These are some romantic songs for you to listen to:'
            puts romantic_song_list
        end 
        
    end 
end 