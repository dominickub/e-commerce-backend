class CreateCartlists < ActiveRecord::Migration[7.0]
  def change
    create_table :cartlists do |t|
      t.integer :item_id
      t.string :quantity

      t.timestamps
    end
  end
end
