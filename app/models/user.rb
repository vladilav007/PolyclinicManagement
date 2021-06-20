class User < ApplicationRecord
  belongs_to :category #One to many
  has_many :appointments
  has_many :doctors, through: :appointments

  validates :name, presence: true
end
