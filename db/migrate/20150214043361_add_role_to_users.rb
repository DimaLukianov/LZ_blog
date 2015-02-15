class AddRoleToUsers < ActiveRecord::Migration
  def change
        add_column :users, :role, :string, :null => false, :default => ''
        User.create! do |u|
        u.email = 'admin@test.com'
        u.password = '12345678'
        u.role = 'administrator'
        end
    end
end
