class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :hash_id

      t.timestamps
    end
    add_index :authors, :hash_id
  end
end
