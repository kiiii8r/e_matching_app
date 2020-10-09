class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.integer :nickname
      t.string :image
      t.references :prefecture_id
      t.text :introduction
      t.text :hobby
      t.text :target
      t.references :language_id
      t.references :role_id
      t.integer :pros
      t.integer :defect
      t.timestamps
    end
  end
end
