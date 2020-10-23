class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.integer :visiter
      t.integer :visited
      t.references :like, foreign_key: true 
      t.references :message, foreign_key: true 

      t.timestamps
    end
  end
end
