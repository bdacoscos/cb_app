class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.attachment :image
      t.text :description
      t.text :ingredients
      t.text :instructions
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
