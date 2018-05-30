class Cart < ApplicationRecord

	has_many :bridges
	has_many :items, through: :bridges
	has_one :user
end
