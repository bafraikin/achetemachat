class CreateCommands < ActiveRecord::Migration[5.2]
  def change
    create_table :commands do |t|

    	t.belongs_to :user, index: :true

      t.timestamps
    end
  end
end
