class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.text :comment
      t.string :item_id
      t.references :seller, foreign_key: { to_table: 'users' }
      t.references :buyer, foreign_key: { to_table: 'users' }

      t.timestamps
    end
  end
end
