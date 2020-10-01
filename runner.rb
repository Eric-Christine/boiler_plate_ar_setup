require_relative 'config/environment'

# Cli.new.start_game

# binding.pry

old_logger = ActiveRecord::Base.logger
ActiveRecord::Base.logger = nil

app = Cli.new

app.welcome
app.get_name 
app.get_user_mood
app.sad_song_list
app.recommend_song

binding.pry