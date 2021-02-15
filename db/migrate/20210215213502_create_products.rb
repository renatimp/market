class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :code
      t.integer :price_cents
      t.integer :quantity

      t.timestamps
    end
  end
end
