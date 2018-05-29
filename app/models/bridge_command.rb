class BridgeCommand < ApplicationRecord
	belongs_to :item
	belongs_to :command
end
