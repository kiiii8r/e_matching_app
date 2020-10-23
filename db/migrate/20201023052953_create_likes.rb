class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.references :user, null: false, foreign_key: true 
      t.integer :pushed_user_id , null: false

      t.timestamps
    end
  end
end
