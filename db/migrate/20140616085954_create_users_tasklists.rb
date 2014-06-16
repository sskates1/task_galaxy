class CreateUsersTasklists < ActiveRecord::Migration
  def change
    create_join_table :users, :tasklists, table_name: :users_tasklists  do |t|
      t.index :user_id
      t.index :tasklist_id
    end
  end
end
