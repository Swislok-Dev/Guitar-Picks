class CreateGuitars < ActiveRecord::Migration[7.0]
  def change
    create_table :guitars do |t|
      t.string :brand
      t.string :model
      t.string :image_url
      t.string :style
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
