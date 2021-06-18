class User < ApplicationRecord
  belongs_to :category #One to many

  validates :name, presence: true
end
