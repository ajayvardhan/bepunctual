class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.integer :user_id
      t.references :user, index: true

      t.timestamps
    end
  end
end
