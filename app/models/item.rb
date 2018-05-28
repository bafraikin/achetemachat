class Item < ApplicationRecord

	def change
    	create_table :items do |prod|
    		prod.string :title
    		prod.text :description
    		prod.price :decimal
    		prod.image_url :string
		
	end

end
