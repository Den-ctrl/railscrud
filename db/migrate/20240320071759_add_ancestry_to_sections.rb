class AddAncestryToSections < ActiveRecord::Migration[7.1]
  def change
    add_column :sections, :ancestry, :string
    add_index :sections, :ancestry
  end
end
