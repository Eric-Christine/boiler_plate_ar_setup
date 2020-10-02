class CreateQuoteTable.rb < ActiveRecord::Migration[6.0]
  def change
    create_table :quotes do |table|
      table.string :saying
      table.string :author
      table.string :lyrics
    end 
  end
end
