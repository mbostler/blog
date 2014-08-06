class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.integer :role_id, :null => false
      t.integer :user_id, :null => false

      t.timestamps
    end
  end
end
