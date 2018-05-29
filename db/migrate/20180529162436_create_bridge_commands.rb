class CreateBridgeCommands < ActiveRecord::Migration[5.2]
  def change
    create_table :bridge_commands do |t|

    	t.belongs_to :command, index: true
      	t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
