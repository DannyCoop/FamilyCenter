class CreateCalendarEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :calendar_events do |t|
      t.string :title
      t.date :start_time
      t.date :end_time
      t.integer :user_id
      t.integer :family_id

      t.timestamps
    end
  end
end
