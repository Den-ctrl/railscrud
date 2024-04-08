class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :first_name
      t.string :middle_name
      t.string :suffix

      t.timestamps
    end
  end
end
