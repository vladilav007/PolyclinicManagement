class Category < ApplicationRecord
    has_many :users
    has_many :doctors
    
    validates :name, presence: true
end
