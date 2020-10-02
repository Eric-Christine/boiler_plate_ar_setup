class Cli
    def welcome
        system 'clear'
        puts "Hello, Welcome to the jukebox! Tell us how you feel and we will give you a suggested song!"
    end 

    def get_name
        prompt = TTY::Prompt.new 
        @username = prompt.ask("Enter your name:")
    end 

    def main_menu
        prompt = TTY::Prompt.new
        @main_menu_selection = prompt.select("Welcome #{@username}. What would you like to do?", %w(View_playlist Make_a_new_playlist))
    end 

    def make_playlist
        if @main_menu_selection == "Make_a_new_playlist"
            prompt = TTY::Prompt.new
            @user_mood = prompt.select("Ok #{@username}. What mood are you in?", %w(Happy Sad Motivated Angsty Romantic))
        end 
    end 

    def create_new_user
        @user3 = User.create(name: "#{@username}", age: 22, mood: "#{@user_mood}")
    end

    def create_new_playlist
        puts 'What would you like to name your playlist?'

        Playlist.create(user: @user3, song: song4, name: "road trip")
    end 


    


    # def get_user_mood
    #     prompt = TTY::Prompt.new
    #     @user_selection = prompt.select("Welcome #{@username}. How are you feeling?", %w(Happy Sad Motivated Angsty Romantic))
    # end 


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

    def angsty_song_list 
        angsty_songs = Song.all.select do |song|
            song.lyrics == "carefree"
        end 
        angsty_songs.map do |song|
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
        if @user_mood == "Sad"
            puts 'These are some sad songs for you to listen to:'
            puts sad_song_list
        end 
        if @user_mood == "Happy"
            puts 'These are some happy songs for you to listen to:'
            puts happy_song_list
        end 
        if @user_mood == "Angsty"
            puts 'These are some angsty songs for you to listen to:'
            puts angsty_song_list
        end 
        if @user_mood == "Motivated"
            puts 'These are some motivating songs for you to listen to:'
            puts motivated_song_list
        end 
        if @user_mood == "Romantic"
            puts 'These are some romantic songs for you to listen to:'
            puts romantic_song_list
        end   
    end 

    def recommend_movie
        if @user_mood == "Sad"
            puts 'These are some sad songs for you to listen to:'
            puts sad_song_list
        end 
        if @user_mood == "Happy"
            puts 'These are some happy songs for you to listen to:'
            puts happy_song_list
        end 
        if @user_mood == "Angsty"
            puts 'These are some angsty songs for you to listen to:'
            puts angsty_song_list
        end 
        if @user_mood == "Motivated"
            puts 'These are some motivating songs for you to listen to:'
            puts motivated_song_list
        end 
        if @user_mood == "Romantic"
            puts 'These are some romantic songs for you to listen to:'
            puts romantic_song_list
        end   
    end 
end 