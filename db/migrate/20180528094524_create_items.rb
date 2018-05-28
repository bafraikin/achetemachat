class CreateItems < ActiveRecord::Migration[5.2]

	def change
    	create_table :items do |prod|
    		prod.string :title
    		prod.text :description
    		prod.decimal :price
    		prod.string :image_url

    		prod.timestamps

    	end
		
	end

end
