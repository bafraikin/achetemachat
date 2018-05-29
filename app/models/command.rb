class Command < ApplicationRecord
	belongs_to :user
	has_many :command_items
	has_many :items, through: :command_items
end
