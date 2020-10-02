class Quote < ActiveRecord::Base
    has_many :keywords
    has_many :users, through: :keywords
end 