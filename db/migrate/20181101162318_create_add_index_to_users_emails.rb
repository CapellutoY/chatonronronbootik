class CreateAddIndexToUsersEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :add_index_to_users_emails do |t|
      t.add_index :users, :email, unique: true
      t.timestamps
    end
  end
end
