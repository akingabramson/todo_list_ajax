class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.boolean :completed
      t.string :task
      t.integer :todo_list_id

      t.timestamps
    end
  end
end
