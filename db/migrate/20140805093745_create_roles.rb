class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name

      t.timestamps
    end
    
    %w(admin family friend coworker).each do |role|
      Role.create!( name: role ) unless Role.exists?( name: role )
    end
  end
end
