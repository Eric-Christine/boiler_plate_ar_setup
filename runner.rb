require_relative 'config/environment'

# require_relative 'lib/seeds.rb'

# Cli.new.start_game

# binding.pry

old_logger = ActiveRecord::Base.logger
ActiveRecord::Base.logger = nil

app = Cli.new

app.welcome
app.get_name
app.create_new_user 
app.main_menu
app.make_playlist
binding.pry

# app.recommend_song
app.create_new_playlist



app.sad_song_list


