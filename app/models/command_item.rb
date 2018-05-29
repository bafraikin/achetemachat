class CommandItem < ApplicationRecord
	belongs_to :command
	belongs_to :item
end
