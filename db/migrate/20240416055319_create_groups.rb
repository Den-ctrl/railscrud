class CreateGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :groups do |t|
      t.integer :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
