class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.references :visiter,  optional: true, foreign_key: true
      t.references :visited,  optional: true, foreign_key: true
      t.references :like,     optional: true, foreign_key: true
      t.references :message,  optional: true, foreign_key: true

      t.timestamps
    end
  end
end
