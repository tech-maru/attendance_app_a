class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.integer :visitor_id, null: false
      t.integer :visited_id, null: false
      t.date :worked_on
      t.integer :attendance_id
      t.string :note, default: '', null: false
      t.boolean :next_day, default: false, null: false
      t.boolean :checked, default: false, null: false

      t.timestamps
    end
  end
end
