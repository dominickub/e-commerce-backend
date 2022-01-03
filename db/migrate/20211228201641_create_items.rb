class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :quantity, default: 1
      t.string :category
      t.string :image
      t.references :seller, foreign_key: { to_table: 'users' }
      
      t.timestamps
    end
  end
end
