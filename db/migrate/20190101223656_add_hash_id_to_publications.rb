class AddHashIdToPublications < ActiveRecord::Migration[5.2]
  def up
    add_column :publications, :hash_id, :string, index: true
    Publication.all.each { |p| p.set_hash_id; p.save }
  end

  def down
    remove_column :publications, :hash_id, :string
  end
end
