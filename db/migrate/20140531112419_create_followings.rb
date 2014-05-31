class CreateFollowings < ActiveRecord::Migration
  def change
    create_table :followings do |t|
      t.integer :user_id
      t.integer :following_id
      t.references :user, index: true
      t.references :following, index: true

      t.timestamps
    end
  end
end
