class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name , null: false , default: ''
      t.integer :mat , null: false , default: ''
      t.string :password_digest , null: false , default: ''

      t.timestamps
    end
  end
end
