class CreateTasklists < ActiveRecord::Migration
  def change
    create_table :tasklists do |t|
      t.string :name, null: false
      t.string :description

      t.timestamp
    end
  end
end
