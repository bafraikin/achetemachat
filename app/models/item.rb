class Item < ApplicationRecord

	has_many :bridges
	has_many :carts, through: :bridges
	has_many :command_items 
	has_many :commands, through: :command_items

end