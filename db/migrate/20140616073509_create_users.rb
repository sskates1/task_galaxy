class CreateUser < ActiveRecord::Migration
  def change
    create_table :user do |t|
      t.string :email, null: false
      t.string :first_name
      t.string :last_name

      t.timestamp

    end
  end
end
