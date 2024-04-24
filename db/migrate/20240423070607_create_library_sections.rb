class CreateLibrarySections < ActiveRecord::Migration[7.1]
  def change
    create_table :library_sections do |t|
      t.references :library, null: false, foreign_key: true
      t.references :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
