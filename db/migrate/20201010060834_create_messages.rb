class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :room_id, null: false
      t.integer :user_id, null: false
      t.text :message,    null: false
      t.timestamps
    end
  end
end
