class CreateCalendarEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :calendar_events do |t|
      t.string :title
      t.date :date
      t.date :end
      t.integer :user_id
      t.integer :family_id

      t.timestamps
    end
  end
end
