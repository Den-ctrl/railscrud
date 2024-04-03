class AddLibraryNameToLibrary < ActiveRecord::Migration[7.1]
  def change
    add_column :libraries, :library_name, :string
  end
end
