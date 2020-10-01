class CreatePlaylistTable < ActiveRecord::Migration[6.0]
  def change
    create_table :playlists do |table|
      table.string :name
      table.references :users
      table.references :songs
    end 
  end
end


