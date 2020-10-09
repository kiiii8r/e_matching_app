class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.references :user,            null: false, unique:true, foreign_key: true
      t.string :image
      t.references :prefecture
      t.text :introduction
      t.text :hobby
      t.text :target
      t.references :language1
      t.references :language2
      t.references :language3
      t.text :other_language
      t.references :role
      t.text :pros
      t.text :defect
      t.timestamps
    end
  end
end
