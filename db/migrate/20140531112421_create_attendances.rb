class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :user_id
      t.integer :event_id
      t.references :event, index: true
      t.references :attendance, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
