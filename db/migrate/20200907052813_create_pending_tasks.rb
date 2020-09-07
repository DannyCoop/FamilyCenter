class CreatePendingTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :pending_tasks do |t|
      t.integer :requester_id
      t.integer :requestee_id
      t.integer :requester_task_id
      t.integer :requestee_task_id

      t.timestamps
    end
  end
end
