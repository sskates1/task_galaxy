class CreateTasksTasklists < ActiveRecord::Migration
  def change
    create_join_table :tasks, :tasklists do |t|
      t.index :task_id
      t.index :tasklists_id
    end
  end
end
