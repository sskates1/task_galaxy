class CreateTasksTasklists < ActiveRecord::Migration
  def change
    create_join_table :tasks, :tasklists, table_name: :tasks_tasklists do |t|
      t.index :task_id
      t.index :tasklist_id
    end
  end
end
