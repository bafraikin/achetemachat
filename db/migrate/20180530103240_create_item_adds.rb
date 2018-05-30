class CreateItemAdds < ActiveRecord::Migration[5.2]
  def change
    create_table :item_adds do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :image_url

      t.timestamps
    end
  end
end
