class Item < ApplicationRecord

	has_many :bridges
	has_many :carts, through: :bridges

end