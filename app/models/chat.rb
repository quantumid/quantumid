class Chat < ApplicationRecord
  has_many :chats, dependent: :destroy
  has_many :users, through: :messages
  validates :name, presence: true
end
