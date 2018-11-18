class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.monetize :price
      t.string :hash_id

      t.timestamps
    end
    add_index :books, :hash_id
  end
end
