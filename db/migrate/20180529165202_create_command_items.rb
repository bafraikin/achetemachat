class CreateCommandItems < ActiveRecord::Migration[5.2]
  def change
    create_table :command_items do |t|
      t.belongs_to :command, index: :true
      t.belongs_to :item, index: :true
      t.timestamps
    end
  end
end
