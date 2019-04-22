class CreateRailsAdminUsersUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :rails_admin_users_users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :auth_token

      t.timestamps
    end
    add_index :rails_admin_users_users, :auth_token, unique: true
  end
end
