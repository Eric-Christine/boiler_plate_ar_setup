require_relative 'config/environment'

# require_relative 'lib/seeds.rb'

# Cli.new.start_game

# binding.pry

old_logger = ActiveRecord::Base.logger
ActiveRecord::Base.logger = nil

app = Cli.new

app.welcome
app.get_name 


app.main_menu
app.make_playlist

app.create_new_user
app.recommend_song
binding.pry
app.create_new_playlist



app.sad_song_list


